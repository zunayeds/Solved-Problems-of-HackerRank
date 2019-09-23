#include <iostream>
#include <iomanip>
#include <limits>

using namespace std;

int main() {
    int i = 4;
    double d = 4.0;
    string s = "HackerRank ";

    int x;
    double y;
    string z;
    cin >> x >> y;
    cin >> ws;
    getline(cin, z);
    cout << i + x << endl;
    cout.precision(1);
    cout << fixed << d+y << endl;
    cout << s + z << endl;
    
    return 0;
}