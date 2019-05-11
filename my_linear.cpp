
#include "StrengthHomProblem.h"

#include "FEReaders.h"

#include <string>
#include <cmath>

using namespace hom3d;
using namespace std;

class CERAMIC_AL2O3: public hom3d::StrengthHomProblem{
	virtual void mesh(){
		fromNeuFile("modified.neu");
	}
	virtual void phases(){
		addElasticIsotropicPhase(3.01e9,0.394);
		addElasticIsotropicPhase(76e9,0.23);

	}
	virtual void strenPaths(){
		addStardartPaths();
	}
public:
	CERAMIC_AL2O3(){fName = "CERAMIC_AL2O3";}
};

int main(){
        CERAMIC_AL2O3* pr = new CERAMIC_AL2O3();
        pr->setHomMethod(AHM_SYM_CONST);
        pr->setNumThreads(4);
        pr->init();
        pr->solve();	
}
