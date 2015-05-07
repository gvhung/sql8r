using System;
using System.Windows.Forms;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;
using SQL8r.WinForms.Presenters;
using SQL8r.WinForms.Presenters.CustomDialogs;
using SQL8r.WinForms.Presenters.DockedChildren;
using SQL8r.WinForms.Presenters.MdiChildren;
using SQL8r.WinForms.Views;
using SQL8r.WinForms.Views.CustomDialogs;
using SQL8r.WinForms.Views.MdiChildren;

namespace SQL8r.WinForms.Factories
{
    public class PresenterFactory
    {
        private static PresenterFactory _instance;

        private PresenterFactory()
        {
        }

        public static PresenterFactory Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new PresenterFactory();
                }
                return _instance;
            }
        }

        private P makePresenter<P, V>()
            where P : IViewPresenter<V>, new()
            where V : Form, new()
        {
            var view = new V();
            var presenter = new P();
            view.Tag = presenter;
            presenter.View = view;
            return presenter;
        }

        
        private IChildPresenter<V> makeChildPresenter<P, V>(IViewPresenter<V> parentPresenter)
            where P : IChildPresenter<V>, new()
            where V : Form, new()
        {
//            var view = new V();
            var childPresenter = new P();
            childPresenter.View = parentPresenter.View;
            childPresenter.SetParentPresenter(parentPresenter);
            return childPresenter;            
        }

        public ModifiedFilesPresenter GetModifiedFilesPresenter()
        {
//            var view = new ModifiedFilesDialog();
            ModifiedFilesPresenter presenter = makePresenter<ModifiedFilesPresenter, ModifiedFilesDialog>();
            presenter.Init();
            return presenter;
        }

        public AboutPresenter GetAboutPresenter()
        {
            AboutForm view = new AboutForm();
            AboutPresenter presenter = AboutPresenter.Instance;
            presenter.View = view;
            presenter.Init();
            return presenter;
        }

		public IPresenter GetUpdatesPresenter(Version installed, Version available)
		{
			AboutForm view = new AboutForm();
			UpdatesPresenter presenter = UpdatesPresenter.Instance;
			presenter.View = view;
			presenter.Init(installed, available);
			return presenter;
		}

        public MainPresenter GetMainPresenter(string[] args)
        {
            var view = new MainForm();
            var presenter = MainPresenter.Instance;
            presenter.View = view;
            presenter.Init(args);
            return presenter;
        }

        public SelectDatabasePresenter GetSelectDatabasePresenter(ServerVersionId serverVersion)
        {
            var view = new SelectDatabaseForm();
            SelectDatabasePresenter presenter = SelectDatabasePresenter.Instance;
            presenter.View = view;
            presenter.Init(serverVersion);
            return presenter;
        }

        public SplashPresenter GetSplashPresenter()
        {
            var view = new SplashForm();
            var presenter = SplashPresenter.Instance;
            presenter.View = view;
            presenter.Init();
            return presenter;
        }

        public SearchPresenter GetSearchPresenter()
        {
            SearchPresenter presenter = makePresenter<SearchPresenter, SearchChildForm>();
            presenter.Init();
            return presenter;
        }

        public TableUsagePresenter GetTableUsagePresenter()
        {
            TableUsagePresenter presenter = makePresenter<TableUsagePresenter, TableUsageChildForm>();
            presenter.Init();
            return presenter;
        }

        public PropertyGridPresenter GetPropertyPresenter()
        {
            PropertyGridPresenter presenter = makePresenter<PropertyGridPresenter, PropertyGridChildForm>();
            presenter.Init();
            return presenter;
        }

        public EditorWithDataGridPresenter GetEditorWithDataGridPresenter()
        {
            EditorWithDataGridPresenter presenter = makePresenter<EditorWithDataGridPresenter, EditorWithDataGridChildForm>();
            var editorPresenter = (EditorPresenter) makeChildPresenter<EditorPresenter, EditorWithDataGridChildForm>(presenter);
            editorPresenter.Init();
            var dataGridPresenter = (DataGridPresenter) makeChildPresenter<DataGridPresenter, EditorWithDataGridChildForm>(presenter);
            dataGridPresenter.Init();
            presenter.Init(editorPresenter, dataGridPresenter);
            return presenter;
        }

        public ProjectPresenter InitProjectPresenter()
        {
            MainForm view = MainPresenter.Instance.View;
            ProjectPresenter presenter = ProjectPresenter.Instance;
            presenter.View = view;
            presenter.Init();
            return presenter;
        }

        public RibbonPresenter InitRibbonPresenter()
        {
            MainForm view = MainPresenter.Instance.View;
            RibbonPresenter presenter = RibbonPresenter.Instance;
            presenter.View = view;
            presenter.Init();
            return presenter;
        }
    }
}
