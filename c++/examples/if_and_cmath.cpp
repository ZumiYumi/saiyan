#include <iostream>
#include <string>
#include <cmath>
using namespace std;

int main() {
    std::string greeting = "Hello";
    std::cout << greeting;
    cout << "\n" << max(5, 10);
    cout << "\n" << min(5, 10);
    cout << "\n" << sqrt(64);
    cout << "\n" << round(2.6);
    cout << "\n" << log(2);
    int myAge = 25;
    int votingAge = 18;

    if (myAge >= votingAge) {
        cout << "Old enough to vote!";
    } else {
        cout << "Not old enough to vote.";
    }
    int time = 22;
    if (time < 10) {
        cout << "\n" << "Good morning.";
    } else if (time < 20) {
        cout << "\n" << "Good day.";
    } else {
        cout << "\n" << "Good evening.";
    }
    return 0;
}
