using System.ComponentModel;
using SQL8r.Logic.Interfaces;
using SQL8r.WinForms.Factories;

namespace SQL8r.App
{
    public class BgSplash
    {
        private BackgroundWorker backgroundWorker1;

        public void Start()
        {
            backgroundWorker1 = new BackgroundWorker();
            backgroundWorker1.DoWork += backgroundWorker1_DoWork;

            backgroundWorker1.RunWorkerAsync();
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            IPresenter p = PresenterFactory.Instance.GetSplashPresenter();

            p.ShowDialog();
        }
    }
}
