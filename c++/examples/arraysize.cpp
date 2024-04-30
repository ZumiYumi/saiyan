#include <iostream>
#include <string>
using namespace std;
int main() {
int myNumbers[5] = {10, 20, 30, 40, 50};
cout << sizeof(myNumbers);
//this will return 20 bytes,
//5 elements * 4 bytes for each position.
int myNumbersint myNumbers[5] = {10, 20, 30, 40, 50};
int getArrayLength = sizeof(myNumbers) / sizeof(int);
cout << getArrayLength;
//return elements of an array
//you must use the same data type in the second sizeof()
int myNumbers[5] = {10, 20, 30, 40, 50};
for (int i = 0; i < sizeof(myNumbers) / sizeof(int); i++) {
  cout << myNumbers[i] << "\n";
}
//this is a more effective for loop using sizeof() which allows
//it to be a scalable for loop
int myNumbers[5] = {10, 20, 30, 40, 50};
for (int i : myNumbers) {
  cout << i << "\n";
}
//this is the most effective solution to loop using a foreach
}
