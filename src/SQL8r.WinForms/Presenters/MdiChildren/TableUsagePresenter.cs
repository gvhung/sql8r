using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Infragistics.Win.UltraWinListView;
using Infragistics.Win.UltraWinProgressBar;
using SQL8r.Logic.Common;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;
using SQL8r.WinForms.Views.MdiChildren;

namespace SQL8r.WinForms.Presenters.MdiChildren
{
    public class TableUsagePresenter : IPresenter, IViewPresenter<TableUsageChildForm>
    {
        private TableUsageChildForm _view;

     //   public static TableUsagePresenter Instance { get; private set; }

        private Sql8rServer _s;
        private Sql8rDatabase _db;
        private Sql8rTable _t;

        #region IPresenter<TableUsageChartChildForm> Members

        public void Init()
        {
       //     Instance = this;
            // _view = view;

            _view.MdiParent = MainPresenter.Instance.View;
            _view.btnReorganize.Click += btnReorganize_Click;
            _view.btnRebuild.Click += btnRebuild_Click;
            _view.btnPerformRecommendation.Click += btnPerformRecommendation_Click;
        }

        public TableUsageChildForm View
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

        private void btnPerformRecommendation_Click(object sender, EventArgs e)
        {
            Query q = null;
            var cq = new StringBuilder();
            var fac = PerformanceManagerFactory.Instance;
            IPerformanceManager man = fac.GetPerformanceManager(_s.ServerConnection);

            foreach (UltraListViewItem li in _view.lvwIndexes.Items)
            {
                var i = (Sql8rIndex)li.Tag;
                if ((i.Recommendation & IndexAction.Rebuild) == IndexAction.Rebuild)
                {
                    q = man.GetRebuildIndexQuery(_s, _db, _t, i);
                    string sql = q.Sql;
                    if (cq.Length > 0)
                    {
                        sql = q.Sql.Remove(0, q.Sql.IndexOf(Environment.NewLine) + Environment.NewLine.Length);
                    }
                    cq.Append(sql); cq.Append(Environment.NewLine);
                    cq.Append(Environment.NewLine);
                }
                if ((i.Recommendation & IndexAction.Reorganize) == IndexAction.Reorganize)
                {
                    q = man.GetReorganizeIndexQuery(_s, _db, _t, i);
                    string sql = q.Sql;
                    if (cq.Length > 0)
                    {
                        sql = q.Sql.Remove(0, q.Sql.IndexOf(Environment.NewLine) + Environment.NewLine.Length);
                    }
                    cq.Append(sql); cq.Append(Environment.NewLine);
                    cq.Append(Environment.NewLine);
                }
            }
            if (q != null)
            {
                var c = new Query(q.ServerConnection, q.ServerName, q.DatabaseName, cq.ToString());
                string fileName = string.Format("{0}", "recommendation");
                var p = (EditorWithDataGridPresenter)MainPresenter.Instance.OpenMdiTab(MainPresenter.MdiTabKeys.EditorWithDataGrid);
                p.EditIndex(c, fileName);
            }
        }

        private void btnRebuild_Click(object sender, EventArgs e)
        {
            Query q = null;
            var cq = new StringBuilder();
            var fac = PerformanceManagerFactory.Instance;
            IPerformanceManager man = fac.GetPerformanceManager(_s.ServerConnection);

            foreach(UltraListViewItem li in _view.lvwIndexes.CheckedItems)
            {
                var i = (Sql8rIndex)li.Tag;
                q = man.GetRebuildIndexQuery(_s, _db, _t, i);

                string sql = q.Sql;
                if(cq.Length>0)
                {   // todo removing first line is not nice solution
                    sql = q.Sql.Remove(0, q.Sql.IndexOf(Environment.NewLine) + Environment.NewLine.Length);
                }
                cq.Append(sql);
                cq.Append(Environment.NewLine);
              //  cq.Append(Environment.NewLine);
            }
            if (q != null)
            {
                var c = new Query(q.ServerConnection, q.ServerName, q.DatabaseName, cq.ToString());
                string fileName = string.Format("{0}", "rebuild");
                var p = (EditorWithDataGridPresenter)MainPresenter.Instance.OpenMdiTab(MainPresenter.MdiTabKeys.EditorWithDataGrid);
                p.EditIndex(c, fileName);
            }
        }

        private void btnReorganize_Click(object sender, EventArgs e)
        {
            Query q = null;
            var cq = new StringBuilder();
            var fac = PerformanceManagerFactory.Instance;
            IPerformanceManager man = fac.GetPerformanceManager(_s.ServerConnection);

            foreach (UltraListViewItem li in _view.lvwIndexes.CheckedItems)
            {
                var i = (Sql8rIndex)li.Tag;
                q = man.GetReorganizeIndexQuery(_s, _db, _t, i);

                string sql = q.Sql;
                if (cq.Length > 0)
                {   // todo removing first line is not nice solution
                    sql = q.Sql.Remove(0, q.Sql.IndexOf(Environment.NewLine) + Environment.NewLine.Length);
                }
                cq.Append(sql); 
                cq.Append(Environment.NewLine);
                //cq.Append(Environment.NewLine);
            }
            if (q != null)
            {
                var c = new Query(q.ServerConnection, q.ServerName, q.DatabaseName, cq.ToString());
                string fileName = string.Format("{0}", "reorganize");
                var p = (EditorWithDataGridPresenter)MainPresenter.Instance.OpenMdiTab(MainPresenter.MdiTabKeys.EditorWithDataGrid);
                p.EditIndex(c, fileName);
            }
        }

        private void bindData(Sql8rTable t)
        {
            _view.txtDataSpaceUsage.Text = string.Format("Data Space: {0} kb", t.DataSpaceUsed);
            _view.txtIndexSpaceUsage.Text = string.Format("Index Space: {0} kb", t.IndexSpaceUsed);

            _view.lvwIndexes.Items.Clear();
            var fragmentationBar = new UltraProgressBar();
            fragmentationBar.Appearance.BackColor = Color.GreenYellow;
            var spaceBar = new UltraProgressBar();
            int max = getMaxIndexSpaceUsed(t);
            spaceBar.Maximum = max;
            spaceBar.Text = "[Value]";

            _view.lvwIndexes.MainColumn.DataType = typeof(string);
            _view.lvwIndexes.SubItemColumns[0].DataType = typeof(double);
            _view.lvwIndexes.SubItemColumns[0].EditorControl = fragmentationBar;
            _view.lvwIndexes.SubItemColumns[1].DataType = typeof(int);
            _view.lvwIndexes.SubItemColumns[1].EditorControl = spaceBar;
            _view.lvwIndexes.SubItemColumns[2].DataType = typeof(string);

            var ulvis = new List<UltraListViewItem>(t.Indexes.Count);

            foreach (Sql8rIndex i in t.Indexes.Values)
            {
                var ulvsiFragmentation = new UltraListViewSubItem();
                ulvsiFragmentation.Value = i.AvgFragmentation;

                var ulvsiSpaceUsed = new UltraListViewSubItem();
                ulvsiSpaceUsed.Value = i.SpaceUsed;

                var ulvsiRecommendation = new UltraListViewSubItem();
                i.Recommendation = recommend(i);
                ulvsiRecommendation.Value = i.Recommendation;

                var ulvi = new UltraListViewItem(i.Name, new[] { ulvsiFragmentation, ulvsiSpaceUsed, ulvsiRecommendation });
                ulvi.Tag = i;
                ulvi.Appearance.Image = MainPresenter.Instance.View.TreeImageList.Images[11];
                ulvis.Add(ulvi);
            }
            _view.lvwIndexes.Items.AddRange(ulvis.ToArray());
        }

        private IndexAction recommend(Sql8rIndex i)
        {
        	if (i.SpaceUsed > 24 && i.AvgFragmentation > 30)
            {
                return IndexAction.Rebuild;
            }
        	if (i.SpaceUsed > 24 && i.AvgFragmentation > 5)
        	{
        		return IndexAction.Reorganize;
        	}
        	return IndexAction.None;
        }

    	private int getMaxIndexSpaceUsed(Sql8rTable t)
        {
            int max = 1;
            foreach (Sql8rIndex i in t.Indexes.Values)
            {
                if (i.SpaceUsed > max)
                {
                    max = i.SpaceUsed;
                }
            }
            return max;
        }

        public void ShowUsage(Sql8rServer s, Sql8rDatabase db, Sql8rTable t, string fileName)
        {
            _s = s;
            _db = db;
            _t = t;
            bindData(t);
            _view.Text = string.Format("{0}: {1}", MainPresenter.MdiTabKeys.TableUsage, fileName);
        }
    }
}