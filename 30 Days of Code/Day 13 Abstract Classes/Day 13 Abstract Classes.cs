using System;
using System.Collections.Generic;
using System.IO;
abstract class Book
{
    
    protected String title;
    protected  String author;
    
    public Book(String t,String a){
        title=t;
        author=a;
    }
    public abstract void display();


}

class MyBook: Book {
    double price;
    public MyBook(string t, string a, double p) : base(t, a)
    {
        price = p;
    }

    public override void display()
    {
        Console.WriteLine(string.Format("Title: {0}", title));
        Console.WriteLine(string.Format("Author: {0}", author));
        Console.WriteLine(string.Format("Price: {0}", price));
    }
}

class Solution {
    static void Main(String[] args) {
      String title=Console.ReadLine();
      String author=Console.ReadLine();
      int price=Int32.Parse(Console.ReadLine());
      Book new_novel=new MyBook(title,author,price);
      new_novel.display();
    }
}