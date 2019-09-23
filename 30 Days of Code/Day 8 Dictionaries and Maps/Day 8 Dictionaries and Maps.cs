using System;
using System.Collections.Generic;
using System.IO;
class Solution {
    static void Main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
        int t = Convert.ToInt32(Console.ReadLine());
        Dictionary<string, string> phoneBook = new Dictionary<string, string>();
        string[] combo;
        for (int i = 0; i < t; i++)
        {
            combo = (Console.ReadLine()).Split(' ');
            phoneBook.Add(combo[0], combo[1]);
        }
        string query;
        while(1 == 1)
        {
            query = Console.ReadLine();
            if (!string.IsNullOrEmpty(query))
            {
                if (phoneBook.ContainsKey(query))
                    Console.WriteLine(string.Format("{0}={1}", query, phoneBook[query]));
                else Console.WriteLine("Not found");
            }
            else break;
        }
    }
}