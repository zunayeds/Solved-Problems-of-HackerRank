#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    double meal, tip, tax;
    cin >> meal >> tip >> tax;
    cout << "The total meal cost is " << round(meal + ((meal * tip)/100.0) + ((meal * tax)/100.0)) << " dollars.";
    return 0;
}