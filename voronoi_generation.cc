#include <iostream>
#include <cstdlib>
#include <string>
#include <fstream>
#include <sstream>
#include <time.h>
#include "voro++.hh"
using namespace voro;
using namespace std;

// Set up constants for the container geometry
const double x_min = 0,x_max = 1;
const double y_min = 0,y_max = 1;
const double z_min = 0,z_max = 1;
const double cvol = (x_max - x_min) * (y_max - y_min) * (x_max - x_min);
const int dim = 3;
const double mod = 0.9;

// Set up the number of blocks that the container is divided into
const int n_x = 6, n_y = 6, n_z = 6;

// Set the number of particles that are going to be randomly introduced
const int part = 3;
const int particles = part * part * part;


// This function returns a random double between 0 and 0.1
double rnd(double a) {return double(a + ( rand())/(10.0 * RAND_MAX));}

double random(double min, double max)
{
	return (double)(rand()) / RAND_MAX * (max - min) + min;
}

int main() {
	int i, j, k;
	double x, y, z;

	// Create a container with the geometry given above, and make it
	// non-periodic in each of the three coordinates. Allocate space for
	// eight particles within each computational block
	container con(x_min, x_max, y_min, y_max, z_min, z_max, n_x, n_y, n_z, false, false, false, 8);

	// Randomly add particles into the container
    
    srand(time(0));

    for(i = 0; i < part; i++) {
        for (j = 0; j < part; j++) {
            for (k = 0; k < part; k++) {
				
				if (i % (part - 1) == 0) {
					if (i > 0) {
						x = 0.9999999999;
					}
					else {
						x = 0;
					}
				}
				else {
					x = random(0.1, 0.9);
				}


				if (j % (part - 1) == 0) {
					if (j > 0) {
						y = 0.9999999999;
					}
					else {
						y = 0;
					}
				}
				else {
					y = random(0.5, 0.65);
				}


				if (k % (part - 1) == 0) {
					if (k > 0) {
						z = 0.9999999999;
					}
					else {
						z = 0;
					}
				}
				else {
					z = random(0.23, 0.78);
				}

                con.put(i * part * part + j * part + k, x, y, z);
            }
        }
    }
    
	con.print_custom("%w\n%x %y %z\n%P\n%s\n%t\n%l ","packing.txt");
	
	ifstream file; 
	file.open ("packing.txt");

	ofstream fout;
	fout.open("voronoi.geo");
	fout << "algebraic3d\n";
	fout << "solid box_1 = plane (0, 0, 0; 0, 0, -1) -bc = 18;\n";
	fout <<	"solid box_2 = plane (0, 0, 0; 0, -1, 0) -bc = 14;\n";
	fout << "solid box_3 = plane (0, 0, 0; -1, 0, 0) -bc = 16;\n";
	fout << "solid box_4 = plane (1, 1, 1; 0, 0, 1) -bc = 22;\n";
	fout << "solid box_5 = plane (1, 1, 1; 0, 1, 0) -bc = 15;\n";
	fout << "solid box_6 = plane (1, 1, 1; 1, 0, 0) -bc = 19;\n";
	fout << "solid cube = box_1 and box_2 and box_3 and box_4 and box_5 and box_6;\n\n";
	string rest_str = "solid rest = cube";
	string tlo_str = "tlo rest -transparent -col=[0,0,1];\n\n";
	string all_elem_str = "solid allElem = ";
	string all_elem = "tlo allElem  -col=[1,0,0];";
	
	int numberNodes, numberWalls;
	string str;
	for(i = 0; i < particles; i++) {
		fout << "solid element" << i << " =\n";
		file >> numberNodes;
		double center[dim];
		for (j = 0; j < dim; j++) {
			file >> center[j];
			//cout << center[j] << endl;
		}
		//cout << numberNodes << endl ;
		double **nodes = new double *[numberNodes];
		for (j = 0; j < numberNodes; j++) {
			nodes[j] = new double [dim];
			file >> str;
			str.erase(0, 1);
			str.erase(str.length() - 1);

			for (k = 0; k < str.length(); k++) {
				if (str[k] == ',') {
					str[k] = ' ';
				}
			}
			istringstream ss(str);
			for (k = 0; k < dim; k++) {
				ss >> nodes[j][k];
				double lenght = mod * (nodes[j][k] - center[k]);
				nodes[j][k] = center[k] + lenght;
			}
		}
		file >> numberWalls;
		//cout << numberWalls << endl;
		int *walls = new int[numberWalls];
		for (j = 0; j < numberWalls; j++) {
			file >> str;
			for (k = 0; k < str.length(); k++) {
				if (str[k] == ',' ) {
					str.erase(0, 1);
					str.erase(k);
				}
			}
			walls[j] = atoi(str.c_str());
			//cout << walls[j] << endl;
		}
		for (j = 0; j < numberWalls; j++) {
			file >> str;
			str.erase(0, 1);
			str.erase(str.length() - 1);
			string result = "plane ("; 
			for (k = 0; k < dim; k++) {
				result += to_string(nodes[walls[j]][k]) + ',';
			}
			result.erase(result.length() - 1);	
			result += "; " + str + ")\n";
			if (j > 0) {
				result = "   and " + result;
			}
			fout << result;
		}
		fout << ";\n\n";
		if( i == particles - 1) {
			all_elem_str += "element" + to_string(i) + ";\n\n";
			rest_str += " and not element" + to_string(i) + ";\n\n";
		} else {
			all_elem_str += "element" + to_string(i) + " or ";
			rest_str += " and not element" + to_string(i);
		}

		delete [] walls;
		delete [] nodes;
	}
	file.close();

	fout << rest_str;
	fout << all_elem_str;
	fout << tlo_str;
	fout << all_elem;
	fout.close();

	// Output the particle positions in gnuplot format
	//con.draw_particles("random_points_p.gnu");

	// Output the Voronoi cells in gnuplot format
	//con.draw_cells_gnuplot("random_points_v.gnu");

	cout << "Для продолжения нажмите Enter\n";
	cin.get();
	return 0;
}
