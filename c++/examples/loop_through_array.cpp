#include <iostream>
#include <string>
using namespace std;
int main() {
string cars[5] = {"Volvo", "BMW", "Ford", "Mazda", "Tesla"};
for (int i = 0; i < 5; i++) {
    cout << cars[i] << "\n";
}
return 0;
}
//this displays all parts of the array vertically, 0-5
string cars[5] = {"Volvo", "BMW", "Ford", "Mazda", "Tesla"};
for (int i = 0; i < 5; i++) {
  cout << i << " = " << cars[i] << "\n";
}
//this example outputs the index of the array along with value
int myNumbers[5] = {10, 20, 30, 40, 50};
for (int i = 0; i < 5; i++) {
  cout << myNumbers[i] << "\n";
}
//this example shows how to loop through an array of integers
