#include <iostream>
using namespace std;

int main() {
  string letters[2][2][2] = {
    {
      { "A", "B" },
      { "C", "D" }
    },
    {
      { "E", "F" },
      { "G", "H" }
    }
  };

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      for (int k = 0; k < 2; k++) {
        cout << letters[i][j][k] << "\n";
      }
    }
  }
  cout << "\n" << letters[0][0][0];
  cout << letters[0][0][1];
  cout << letters[0][1][0];
  cout << letters[0][1][1];
  cout << "\n" << letters[1][0][0];
  cout << letters[1][0][1];
  cout << letters[1][1][0];
  cout << letters[1][1][1];
  return 0;
}
