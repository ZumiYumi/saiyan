#include <iostream>
#include <string>
using namespace std;

int main() {
    int x, y;
    int sum;
    cout << "Type a number: ";
    cin >> x;
    cout << "Type another number ";
    cin >> y;
    sum = x + y;
    cout << "Sum is: " << sum;
    return 0;
}
int second() {
    int myNum = 5;               // Integer (whole number)
    float myFloatNum = 5.99;     // Floating point number
    double myDoubleNum = 9.98;   // Floating point number
    char myLetter = 'D';         // Character
    bool myBoolean = true;       // Boolean
    string myText = "Hello";     // String
    float f1 = 35e3;
    double d1 = 12E4;
    cout << f1 << "\n";
    cout << d1;
    int x = 100 + 50;
    cout << "\n" << x;
    int b = 5;
    int a = 3;
    cout << (b > a); //returns 1 because it is true
    cout << "\n" << (b < 5 && a < 10); //&& is logical AND
    cout << "\n" << (b <5 || b < 4); //|| logical or
    cout << "\n" << !(b <5 || b < 4);// reverse the result, false if it is true
    return 0;
}
