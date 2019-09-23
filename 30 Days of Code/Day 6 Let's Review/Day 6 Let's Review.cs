using System;
using System.Collections.Generic;
using System.IO;
class Solution {
    static void Main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
        int t = Convert.ToInt32(Console.ReadLine());
        string s;
        string o, e;
        for (int i = 0; i < t; i++)
        {
            s = Console.ReadLine();
            o = e = string.Empty;
            for (int j = 0; j < s.Length; j++)
            {
                if (j % 2 == 0) o += s[j].ToString();
                else e += s[j].ToString();
            }
            Console.WriteLine(string.Format("{0} {1}", o, e));
        }
    }
}