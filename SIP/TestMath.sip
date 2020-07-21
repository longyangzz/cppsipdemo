%Module TestMath

class TestMath {
%TypeHeaderCode
#include <string>
#include <PySIPTest.h>
%End
 public:
    TestMath();
	int add(int a, int b);
};