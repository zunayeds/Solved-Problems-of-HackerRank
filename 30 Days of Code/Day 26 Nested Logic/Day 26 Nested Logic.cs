using System;
using System.Collections.Generic;
using System.IO;
class Solution {
    static void Main(String[] args) {
        int hackos = 0;
        string s1, s2;
        string[] set1, set2;
        DateTime d1, d2;
        s1 = Console.ReadLine();
        s2 = Console.ReadLine();
        set1 = s1.Split(' ');
        set2 = s2.Split(' ');
        d1 = DateTime.Parse(string.Concat(set1[2], "-", set1[1], "-", set1[0]));
        d2 = DateTime.Parse(string.Concat(set2[2], "-", set2[1], "-", set2[0]));
        
        //Console.WriteLine("{0} {1}", d1.ToShortDateString(), d2.ToShortDateString());
        if (d1.Year > d2.Year)
            hackos = 10000;
        else if (d1 > d2)
        {
            if (d1.Year == d2.Year && d1.Month-d2.Month > 0)
                hackos = 500 * (d1.Month-d2.Month);
            else if (d1.Month == d2.Month && d1.Day-d2.Day > 0)
                hackos += 15 * (d1.Day-d2.Day);
        }
        Console.WriteLine(hackos);
    }
}