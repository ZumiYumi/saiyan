#include <iostream>
#include <string>
using namespace std;
// This is a comment
int main() {
    cout << "Hello World! \n\n";
    cout << "I am learning C++ \n";
    int myNum = 7;
    cout << "myNum \n";
    int myNum1;
    myNum1 = 19;
    cout << myNum1;
    double floatNum = 5.5;
    char aLetter = 'A';
    string myText = "Howdy";
    bool YeaOrNay = false;
    cout << "\nI am " << myNum << " years old.\n";
    int x = 5, y = 10, z = 15;
    int sum = x + y;
    cout << sum << "\n";
    cout << y + z;
    x = y = z = 50;
    cout << "\n" << x + y + z;
    const float PI = 3.1415; /*const makes PI always equal 3.1415
    you must assign a value when you declare a const */
    bool isCodingFun = true;
    bool isCatMeatGood = false;
    cout << "\n" << isCodingFun << "\n" << isCatMeatGood;
    cout << "\n" << myText;
    return 0;
}
/* This is an example
of a multiple line comment */
