using System;
using System.Collections.Generic;
using System.IO;

class Solution {
    static void Main(String[] args) {
        int i = 4;
        double d = 4.0;
        string s = "HackerRank ";

        
        // Declare second integer, double, and String variables.
        int j;
        double e;
        string x;
        
        // Read and save an integer, double, and String to your variables.
        j = Convert.ToInt32(Console.ReadLine());
        e = Convert.ToDouble(Console.ReadLine());
        x = Console.ReadLine();
        
        // Print the sum of both integer variables on a new line.
        Console.WriteLine(i+j);

        // Print the sum of the double variables on a new line.
        Console.WriteLine(string.Format("{0:N1}",d+e));

        // Concatenate and print the String variables on a new line
        // The 's' variable above should be printed first.
        Console.WriteLine(string.Concat(s, x));

    }
}