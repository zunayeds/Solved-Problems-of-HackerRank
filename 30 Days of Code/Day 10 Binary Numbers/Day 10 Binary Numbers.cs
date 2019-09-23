using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Text.RegularExpressions;
using System.Text;
using System;

class Solution {
    static int CountConsecutiveOne(int n)
    {
        string binary = Convert.ToString(n, 2);
        int count = 0, max = 0;
        for(int i = 0; i < binary.Length; i++)
        {
            if (binary[i] == '0') count = 0;
            else count++;
            max = Math.Max(max, count);
        }
        return max;
    }


    static void Main(string[] args) {
        int n = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine(CountConsecutiveOne(n));
    }
}
