#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    int t;
    string s, r;
    cin >> t;
    cin >> ws;
    for (int i = 0; i < t; i++) {
        getline(cin, s);
        r = "";
        for (int i = 0; i < s.length(); i+=2) {
            r += s[i];
        }
        r += ' ';
        for (int i = 1; i < s.length(); i+=2) {
            r += s[i];
        }
        cout << r << endl;
    }
    return 0;
}