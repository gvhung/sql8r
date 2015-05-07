using System;
using SQL8r.ConsoleUI.Handlers;

namespace SQL8r.ConsoleUI.App
{
    public static class Program
    {
        [STAThread]
        public static void Main(string[] args)
        {
            var cmd = new CommandLineHandler();
            if (!cmd.ParseArguments(args))
            {
                cmd.PrintUsage();
            }
        }
    }
}