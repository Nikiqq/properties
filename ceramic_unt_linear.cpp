#include "StrengthHomProblem.h"

#include "FEReaders.h"

#include <string>
#include <cmath>

using namespace hom3d;
using namespace std;

class NANO_TUBES: public hom3d::StrengthHomProblem{
	virtual void mesh(){
		fromNeuFile("nanotubes.neu");
	}
        virtual void phases(){
                addElasticIsotropicPhase(3.01e9,0.394);
                addHoffmanStrengthCriterium(7e6,8.1e6,3.06e6);

                addElasticIsotropicPhase(76e9,0.23);
                addHoffmanStrengthCriterium(76e6,84.1e6,38.06e6);

        }
	virtual void strenPaths(){
		addStardartPaths();
	}
public:
	NANO_TUBES(){fName = "NANO_TUBES";}
};

class CERAMIC_AL2O3: public hom3d::StrengthHomProblem{
	virtual void mesh(){
		fromNeuFile("ceramic.neu");
	}
	virtual void phases(){
		//matrix
                addElasticIsotropicPhase(3.01e9,0.394);
                addHoffmanStrengthCriterium(7e6,8.1e6,3.06e6);
		
		//nanotubes
		NANO_TUBES* pr = new NANO_TUBES();
		pr->setHomMethod(AHM_SYM_CONST);
		pr->setNumThreads(4);
		pr->init();
		pr->solve();
		
		addElasticIsotropicPhase(pr->EXX(),pr->MuXY());
		addHoffmanStrengthCriterium(pr->strenSigma("E00000").length(),
									pr->strenSigma("C00000").length(),
									pr->strenSigma("000E00").length());
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
