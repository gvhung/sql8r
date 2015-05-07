using System.Windows.Forms;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Interfaces;
using SQL8r.WinForms.Views.MdiChildren;

namespace SQL8r.WinForms.Presenters.MdiChildren
{
    public class PropertyGridPresenter : IPresenter, IViewPresenter<PropertyGridChildForm>
    {
        private PropertyGridChildForm _view;

        //public static PropertyGridPresenter Instance { get; private set; }

        #region IPresenter<PropertyGridChildForm> Members

        public void Init()
        {
         //   Instance = this;
 //           _view = view;

            _view.MdiParent = MainPresenter.Instance.View;
        }

        

        public PropertyGridChildForm View
        {
            get { return _view; }
            set { _view = value; }
        }

        public DialogResult ShowDialog()
        {
            return _view.ShowDialog();
        }

        public void Show()
        {
            _view.Show();
        }

        #endregion

        public void ShowObject(Sql8rDatabase db)
        {
            _view.pgGeneric.SelectedObject = db;
        }

        public void ShowObject(Sql8rServer s)
        {
            _view.pgGeneric.SelectedObject = s;
        }
    }
}