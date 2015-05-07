using System.Windows.Forms;

namespace SQL8r.Logic.Interfaces
{
    public interface IPresenter
    {
        DialogResult ShowDialog();
        void Show();
    }
}