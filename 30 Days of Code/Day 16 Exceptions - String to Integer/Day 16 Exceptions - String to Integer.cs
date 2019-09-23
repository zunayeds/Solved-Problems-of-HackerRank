using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args) {
        string S = Console.ReadLine();
        int number;
        try
        {
            Console.WriteLine(Convert.ToInt32(S));
        }
        catch(Exception ex)
        {
            Console.WriteLine("Bad String");
        }
    }
}