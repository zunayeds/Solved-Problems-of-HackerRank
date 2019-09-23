#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <map>
using namespace std;


int main() {
    map<string, long long> dictionary;
    map<string, long long>::iterator it;
    long long n,x;
    string s;
    cin >> n;
    for (int i = 0; i < n; i++) {
        cin >> s >> x;
        dictionary[s] = x;
    }
    while (cin >> s) {
        it = dictionary.find(s);
        if (it != dictionary.end()) {
            cout << s << "=" << it->second;
        }
        else {
            cout << "Not found";
        }
        cout << endl;
    }
    return 0;
}