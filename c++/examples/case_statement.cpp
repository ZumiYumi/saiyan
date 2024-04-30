#include <iostream>
#include <string>
using namespace std;
int main() {
int time = 20;
string result = (time <18) ? "Good day.\n" : "Good evening.\n";
cout << result;
//how to write a ternary else if statement.
// variable = (condition) ? true : false;
int day = 4;
switch (day) {
    case 1:
        cout << "Monday";
        break;
    case 2:
        cout << "Tuesday";
        break;
    case 3:
        cout << "Wednesday";
        break;
    case 4:
        cout << "Thursday";
        break;
    case 5:
        cout << "Friday";
        break;
    default:
        cout << "It is the weekend!";
    }
}
