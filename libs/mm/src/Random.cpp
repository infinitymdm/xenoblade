#include "mm/Random.hpp"
#include "mm/MTRand.hpp"

//Part of monolithlib? (namespace according to XCDE)
namespace ml{
    using namespace mm::mtl;

    //func_80435EA4
    void mtInit(u32 seed){
        MTRand::getInstance()->mtInit(seed);
    }

    int mtRand(){
        return MTRand::getInstance()->rand();
    }


    //Random range (max only)
    //Max is exclusive
    int mtRand(int max){
        MTRand* mtRand = MTRand::getInstance();

        if(max != 0){
    	    int randVal = mtRand->rand();
    	    return randVal % max;
        }else{
    	    return 0;
        }
    }

    //Random range (min and max)
    //Min is inclusive, max is exclusive
    int mtRand(int min, int max){
        MTRand* mtRand = MTRand::getInstance();
        int range = max - min;
        int result = 0;

        if(range != 0){
    	    int randVal = mtRand->rand();
    	    result = (randVal % range);
        }else{
    	    result = 0;
        }

        return min + result; //wtf? why not just add it before?
    }

}
