#include <iostream>
#include <stack>
#include <queue>

using namespace std;

class Solution {
    public :stack<char> stk;
    public :queue<char> que;
    
    public :void pushCharacter(char ch) {
        stk.push(ch);
    }
    public :void enqueueCharacter(char ch) {
        que.push(ch);
    }
    public :char popCharacter() {
        char c = stk.top();
        stk.pop();
        return c;
    }
    public :char dequeueCharacter() {
        char c = que.front();
        que.pop();
        return c;
    }
};