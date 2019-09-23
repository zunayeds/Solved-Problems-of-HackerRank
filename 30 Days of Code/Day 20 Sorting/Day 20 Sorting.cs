using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args) {
        int n = Convert.ToInt32(Console.ReadLine());
        string[] a_temp = Console.ReadLine().Split(' ');
        int[] a = Array.ConvertAll(a_temp,Int32.Parse);
        int count = 0, sort_count = 0;
        int temp;
        int tot_el = a.Count();
        while (count != tot_el-1)
        {
            count = 0;
            for (int i = 0; i < tot_el-1; i++)
            {
                if (a[i] > a[i+1])
                {
                    temp = a[i];
                    a[i] = a[i+1];
                    a[i+1] = temp;
                    sort_count++;
                }
                else
                {
                    count++;
                }
            }
        }
        Console.WriteLine("Array is sorted in {0} swaps.", sort_count);
        Console.WriteLine("First Element: {0}", a[0]);
        Console.WriteLine("Last Element: {0}", a[tot_el-1]);
    }
}