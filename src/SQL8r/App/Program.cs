using System;
using System.ComponentModel.Composition.Hosting;
using System.ComponentModel.Composition;
using System.Threading;
using System.Windows.Forms;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Helpers;
using SQL8r.WinForms.Factories;
using SQL8r.WinForms.Presenters;

namespace SQL8r.App
{
    public static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        public static void Main(string[] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            var app = new Sql8rApp();
            app.Run(args);
        }
    }

    public class Sql8rApp
    {
        private void openSplashScreen()
        {
            var splash = new BgSplash();
            splash.Start();
        }

        private void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            var ex = e.ExceptionObject as Exception;
            if (ex != null)
            {
                PresentException(ex);
            }
        }

        private void Application_ThreadException(object sender, ThreadExceptionEventArgs e)
        {
            Exception ex = e.Exception;
            PresentException(ex);
        }

        private void PresentException(Exception ex)
        {
            DialogHelper.Instance.ShowExceptionDialog(ex);
        }

        public void Run(string[] args)
        {
            openSplashScreen();

            Application.ThreadException += Application_ThreadException;
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;

            var catalog = new DirectoryCatalog(Application.StartupPath, "SQL8r.*.dll");

            var container = new CompositionContainer(catalog);
            var batch = new CompositionBatch();
            batch.AddPart(DatabaseManagerFactory.Instance);
            container.Compose(batch);

            
			var batch2 = new CompositionBatch();
			batch2.AddPart(PerformanceManagerFactory.Instance);
			batch2.AddPart(TemplateManagerFactory.Instance);
			batch2.AddPart(SearchManagerFactory.Instance);
			batch2.AddPart(CodeManagerFactory.Instance);
			container.Compose(batch2);

            MainPresenter presenter = PresenterFactory.Instance.GetMainPresenter(args);
            Application.Run(presenter.View);

        }
    }
}