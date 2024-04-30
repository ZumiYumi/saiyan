#include <iostream>
#include <string>
using namespace std;

int main() {
    string greeting = "Hello";
    string firstName = "John";
    string lastName = "Doe";
    string fullName = firstName + " " + lastName;
    cout << fullName;
    string firstName2 = "John ";
    string lastName2 = "Doe";
    string fullName2 = firstName2.append(lastName2);
    cout << "\n" << fullName2;
    int x = 10;
    int y = 20;
    int z = x + y;      // z will be 30 (an integer)
    cout << "\n" << z;
    string a = "10";
    string b = "20";
    string c = a + b; // c will be 1020 (a string)
    cout << "\n" << c;
    string txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    cout << "\n" << "The length of the txt string is: " << txt.length();
    string myString = "Hello";
    cout << "\n" << myString[0];
    myString[0] = 'J';
    cout << "\n" << myString;
    string txt1 = "We are the so-called \"Vikings\" from the north.";
    cout << "\n" << txt1;
    string txt2 = "It\'s alright.";
    cout << "\n" << txt2;
    // \\ will insert a single backslash in a string
    // you can store a string like this
    string name;
    cout << "\n" << "Type your name here: ";
    cin >> name;
    cout << "Your name is: " << name;
    //however if you enter a space only the first word will be stored
    //use getline() function to read a line of text
    string fullname4;
    cout << "Type your full name: ";
    getline (cin, fullname4);
    cout << "Your name is: " << fullname4;
}
