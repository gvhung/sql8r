using System;
using SQL8r.App;
using SQL8r.Logic.Helpers;

namespace SQL8r.ConsoleUI.Handlers
{
    public class CommandLineHandler
    {
        public bool ParseArguments(string[] args)
        {
            if (args.Length > 0)
            {
                switch (args[0])
                {
                    case "-GUI":
						string[] args2 = new string[args.Length-1];
                		Array.Copy(args, 1, args2, 0, args.Length - 1);
                        var app = new Sql8rApp();
                        app.Run(args2);
                        return true;
                }
            }
            return false;
        }

        public void PrintUsage()
        {
            string appName = DialogHelper.Instance.GetApplicationName();
            Console.WriteLine(appName);
            Console.WriteLine("-ConnectionString <conn>");
            Console.WriteLine("-Command <cmd>");
            Console.WriteLine("-GUI");
            Console.ReadLine();
        }
    }
}