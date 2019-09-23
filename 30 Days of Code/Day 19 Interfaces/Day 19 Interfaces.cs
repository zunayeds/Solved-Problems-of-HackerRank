using System;
public interface AdvancedArithmetic{
    int divisorSum(int n);
}

public class Calculator : AdvancedArithmetic
{
    public int divisorSum(int n)
    {
        int sq = (int)Math.Sqrt(n);
        int sum = 0;
        for(int i = 1; i <= sq; i++) {
            if (n % i == 0)
            {
                if (i != sq)
                {
                    sum += i + (n / i);
                }
                else
                {
                    if (sq * sq == n)
                        sum += sq;
                    else
                        sum += i + (n / i);
                }
            }
        }
        return sum;
    }
}

class Solution{
    static void Main(string[] args){
        int n = Int32.Parse(Console.ReadLine());
      	AdvancedArithmetic myCalculator = new Calculator();
        int sum = myCalculator.divisorSum(n);
        Console.WriteLine("I implemented: AdvancedArithmetic\n" + sum); 
    }
}