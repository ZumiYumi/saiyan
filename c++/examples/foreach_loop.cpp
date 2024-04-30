#include <iostream>
#include <string>
using namespace std;
int main() {
int myNumbers[5] = {10, 20, 30, 40, 50};
for (int i : myNumbers) {
    cout << i << "\n";
}
}
//you can also Omit the array size like this
int myNumbers[] = {10, 20, 30};
//you can also omit elements of the array
// and declare them later like this
int myNumbers[5];
myNumbers[0] = 10;
myNumbers[1] = 20;
myNumbers[2] = 30;
