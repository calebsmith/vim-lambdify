using System;

namespace LambdaExpressionsDemo
{
    public delegate void MessageDelegate(string message);

    public class Program
    {
        public static void Main()
        {
            MessageDelegate ShowMessage = (message) => Console.WriteLine(message);

            ShowMessage("Hello World!");
        }
    }
}
