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
using namespace std;


int main(){
    vector< vector<int> > arr(6,vector<int>(6));
    for(int arr_i = 0;arr_i < 6;arr_i++){
       for(int arr_j = 0;arr_j < 6;arr_j++){
          cin >> arr[arr_i][arr_j];
       }
    }
    int sum = 0, maX = -10000000;
    for (int i = 0; i < 6-2; i++) {
        for (int j = 0; j < 6-2; j++) {
            sum = 0;
            for (int x = i; x < i+3; x++) {
                for (int y = j; y < j+3; y++) {
                    if (x != i+1 || (x == i+1 && y == j+1)) {
                        sum += arr[x][y];
                    }
                }
            }
            maX = max(maX,sum);
            sum = 0;
        }
    }
    cout << maX << endl;
    return 0;
}