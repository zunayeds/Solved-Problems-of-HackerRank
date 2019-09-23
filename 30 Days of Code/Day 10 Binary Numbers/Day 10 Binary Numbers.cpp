#include <map>
#include <set>
#include <list>
#include <cmath>
#include <ctime>
#include <deque>
#include <queue>
#include <stack>
#include <string>
#include <bitset>
#include <cstdio>
#include <limits>
#include <vector>
#include <climits>
#include <cstring>
#include <cstdlib>
#include <fstream>
#include <numeric>
#include <sstream>
#include <iostream>
#include <algorithm>
#include <unordered_map>

using namespace std;

int countBinaryOnes(int num) {
    int sum = 0, max = 0;
    while (num > 0) {
        if(num % 2 == 1) {
            sum++;
        }
        else {
            sum = 0;
        }
        if (sum > max) {
            max = sum;
        }
        num /= 2;
    }
    return max;
}

int main(){
    int n;
    cin >> n;
    cout << countBinaryOnes(n) << endl;
    return 0;
}