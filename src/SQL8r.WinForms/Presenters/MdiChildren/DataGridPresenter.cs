using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using Infragistics.Excel;
using Infragistics.Win;
using Infragistics.Win.Printing;
using Infragistics.Win.UltraWinGrid;
using Infragistics.Win.UltraWinGrid.DocumentExport;
using Infragistics.Win.UltraWinGrid.ExcelExport;
using SQL8r.Logic.Common;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;
using SQL8r.WinForms.Views.MdiChildren;

namespace SQL8r.WinForms.Presenters.MdiChildren
{
    public class DataGridPresenter : IChildPresenter<EditorWithDataGridChildForm>
    {
        private EditorWithDataGridChildForm _view;
        private EditorWithDataGridPresenter _parentPresenter;

        public void Init()
        {
            _view.tsbPrintGrid.Click += btnPrint_Click;
            _view.tsbExport.ButtonClick += btnExportToSelected_ButtonClick;
            _view.tsbExport.Tag = ExportFormats.Excel;

            _view.tscbReadOnly.Click += tsbReadOnly_Click;

            _view.tsmExcel.Click += btnExportToFormat_Click;
            _view.tsmExcel.Tag += ExportFormats.Excel;
        	_view.tsmExcel2007.Image = _view.tsmExcel.Image;
			_view.tsmExcel2007.Click += btnExportToFormat_Click;
			_view.tsmExcel2007.Tag += ExportFormats.Excel2007;
			_view.tsmPdf.Click += btnExportToFormat_Click;
            _view.tsmPdf.Tag += ExportFormats.Pdf;
            _view.tsmXps.Click += btnExportToFormat_Click;
            _view.tsmXps.Tag += ExportFormats.Xps;
            _view.tsmXml.Click += btnExportToFormat_Click;
            _view.tsmXml.Tag += ExportFormats.Xml;

            _view.grdData.InitializeRow += grdData_InitializeRow;
            _view.grdData.AfterRowUpdate += grdData_AfterRowUpdate;
            _view.grdData.AfterRowsDeleted += grdData_AfterRowsDeleted;
            _view.grdData.AfterRowInsert += grdData_AfterRowInsert;
            _view.grdData.DisplayLayout.Override.AllowAddNew = AllowAddNew.No;
            _view.grdData.DisplayLayout.Override.AllowUpdate = DefaultableBoolean.False;
            _view.grdData.DisplayLayout.Override.AllowDelete = DefaultableBoolean.False;
            _view.grdData.DisplayLayout.Override.CellClickAction = CellClickAction.RowSelect;
            _view.grdData.DisplayLayout.Override.AllowRowFiltering = DefaultableBoolean.True;

            setEditability(!_view.tscbReadOnly.Checked, false);
        }

        public EditorWithDataGridChildForm View
        {
            set { _view = value; }
        }

        public void SetParentPresenter(IViewPresenter<EditorWithDataGridChildForm> parentPresenter)
        {
            _parentPresenter = (EditorWithDataGridPresenter)parentPresenter;
        }

        private void grdData_AfterRowsDeleted(object sender, EventArgs e)
        {
            grdData_AfterRowUpdate(sender, null);
        }

        private void grdData_AfterRowInsert(object sender, RowEventArgs e)
        {
            grdData_AfterRowUpdate(sender, e);
        }

        private void grdData_AfterRowUpdate(object sender, RowEventArgs e)
        {
            if (_view.grdData.DataSource is DataTable)
            {
                var query = _view.grdData.Tag as Query; 

                if (query != null && query.HasAdapter)
                {
                    var dt = _view.grdData.DataSource as DataTable;

                    int i = query.Adapter.Update(dt);
                    MainPresenter.Instance.SetError(string.Format("Inserted/Updated/Deleted {0} rows", i));
                }
            }
        }

        private void tsbReadOnly_Click(object sender, EventArgs e)
        {
            _view.tscbReadOnly.Checked = !_view.tscbReadOnly.Checked;
            setEditability(!_view.tscbReadOnly.Checked, false);
        }

        private void grdData_InitializeRow(object sender, InitializeRowEventArgs e)
        {
            if (e.Row.Index % 2 == 0)
            {
                e.Row.Appearance.BackColor = Color.FromKnownColor(KnownColor.ControlLight);

            }
            else
            {
                e.Row.Appearance.BackColor = Color.FromKnownColor(KnownColor.ControlLightLight);
            }
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            var pd = new UltraGridPrintDocument();
            pd.Grid = _view.grdData;

            var ppv = new UltraPrintPreviewDialog();
            ppv.Document = pd;
            ppv.Show();
        }

        private void btnExportToSelected_ButtonClick(object sender, EventArgs e)
        {
            var item = (ToolStripSplitButton) sender;
            string selectedFormat = item.Tag.ToString();

			if (selectedFormat == ExportFormats.Excel)
			{
				var exp = new UltraGridExcelExporter();

				SaveFileDialog sfd = DialogFactory.Instance.GetSaveFormatDialog("Excel|*.xls");
				if (sfd.ShowDialog() == DialogResult.OK)
				{
					exp.Export(_view.grdData, sfd.FileName, WorkbookFormat.Excel97To2003);
				}
			}
			else if (selectedFormat == ExportFormats.Excel2007)
			{
				var exp = new UltraGridExcelExporter();

				SaveFileDialog sfd = DialogFactory.Instance.GetSaveFormatDialog("Excel 2007|*.xlsx");
				if (sfd.ShowDialog() == DialogResult.OK)
				{
					
					exp.Export(_view.grdData, sfd.FileName, WorkbookFormat.Excel2007);
				}
			}
			else if (selectedFormat == ExportFormats.Pdf)
            {
                var exp = new UltraGridDocumentExporter();

                SaveFileDialog sfd = DialogFactory.Instance.GetSaveFormatDialog("Pdf|*.pdf");
                if (sfd.ShowDialog() == DialogResult.OK)
                {
                    exp.Export(_view.grdData, sfd.FileName, GridExportFileFormat.PDF);
                }
            }
            else if (selectedFormat == ExportFormats.Xps)
            {
                var exp = new UltraGridDocumentExporter();

                SaveFileDialog sfd = DialogFactory.Instance.GetSaveFormatDialog("Xps|*.xps");
                if (sfd.ShowDialog() == DialogResult.OK)
                {
                    exp.Export(_view.grdData, sfd.FileName, GridExportFileFormat.XPS);
                }
            }
            else if (selectedFormat == ExportFormats.Xml)
            {
//                var exp = new UltraGridDocumentExporter();

                SaveFileDialog sfd = DialogFactory.Instance.GetSaveFormatDialog("Xml|*.xml");
                if (sfd.ShowDialog() == DialogResult.OK)
                {
                    if (_view.grdData.DataSource is DataSet)
                    {
                        var ds = (DataSet) _view.grdData.DataSource;
                        ds.WriteXml(sfd.FileName, XmlWriteMode.IgnoreSchema);
                    }
                    else if (_view.grdData.DataSource is DataTable)
                    {
                        var dt = (DataTable) _view.grdData.DataSource;
                        dt.WriteXml(sfd.FileName, XmlWriteMode.IgnoreSchema);
                    }
                }
            }
        }

        private void btnExportToFormat_Click(object sender, EventArgs e)
        {
            var item = (ToolStripDropDownItem) sender;
            var parent = (ToolStripSplitButton) item.OwnerItem;
            parent.Text = string.Format("Export To {0}...", item.Tag);
            parent.Image = item.Image;
            parent.Tag = item.Tag;

            btnExportToSelected_ButtonClick(parent, e);
        }

        private DataSet importFromXls(string fileName)
        {
            var ds = new DataSet();
            Workbook b = Workbook.Load(fileName);

            //' Parse each Worksheet into a DataTable.
            foreach (Worksheet w in b.Worksheets)
            {
                DataTable table = ds.Tables.Add(w.Name);

                foreach (WorksheetCell headerCell in w.Rows[0].Cells)
                {
                    if (headerCell.Value != null && headerCell.Value.ToString().Length > 0)
                    {
                        table.Columns.Add(new DataColumn(headerCell.Value.ToString()));
                    }
                }

                var cellList = new List<string>();

                for (int iRow = 1; iRow < 65535; iRow++)
                {
                    foreach (WorksheetCell cell in w.Rows[iRow].Cells)
                    {
                        if ((cell.Value != null) && (cell.Value.ToString().Length > 0))
                        {
                            cellList.Add(cell.Value.ToString());
                        }
                    }

                    if (cellList.Count > 0)
                    {
                        table.Rows.Add(cellList.ToArray());
                        cellList.Clear();
                    }
                    else
                    {
                        iRow = 65535;
                    }
                } 
            }

            return ds;
        }

        private void setEditability(bool editable, bool disable)
        {
            _view.tscbReadOnly.Checked = !editable;
            if (!editable)
            {
                _view.grdData.PerformAction(UltraGridAction.ExitEditMode);

                _view.grdData.DisplayLayout.Override.AllowUpdate = DefaultableBoolean.False;
                _view.grdData.DisplayLayout.Override.AllowAddNew = AllowAddNew.No;
                _view.grdData.DisplayLayout.Override.AllowDelete = DefaultableBoolean.False;
                _view.grdData.DisplayLayout.Override.CellClickAction = CellClickAction.RowSelect;
            }
            else
            {
                _view.grdData.DisplayLayout.Override.AllowUpdate = DefaultableBoolean.True;
                _view.grdData.DisplayLayout.Override.AllowAddNew = AllowAddNew.FixedAddRowOnBottom;
                _view.grdData.DisplayLayout.Override.AllowDelete = DefaultableBoolean.True;
                _view.grdData.DisplayLayout.Override.CellClickAction = CellClickAction.Default;
            }

            _view.tscbReadOnly.Enabled = !disable;
        }

        private UltraGridColumn getColumn(UltraGridBand band, string columnName)
        {
            foreach (UltraGridColumn ugc in band.Columns)
            {
                if (ugc.Header.Caption.Equals(columnName))
                {
                    return ugc;
                }

                break;
            }
            return null;
        }

        private void bindDataTable(Query query, IColumnedObject o)
        {
            bindDataTable(query);

            if (_view.grdData.DisplayLayout.Bands.Count > 0)
            {
                foreach (Sql8rColumn c in o.Columns.Values)
                {
                    if (c.InPrimaryKey)
                    {
                        UltraGridColumn ugc = getColumn(_view.grdData.DisplayLayout.Bands[0], c.Name);
                        if (ugc != null)
                        {
                            ugc.Header.Appearance.Image = MainPresenter.Instance.View.TreeImageList.Images[5];
                            ugc.CellClickAction = CellClickAction.RowSelect;
                        }
                    }
                }
            }
        }

        private void bindDataTable(Query query)
        {
            DataTable dt = query.Result;

            if (dt == null || dt.Rows.Count == 0)
            {
                _view.grdData.Text = "Query returned no data";
                _view.grdData.DisplayLayout.CaptionVisible = DefaultableBoolean.True;
            }
            else
            {
                _view.grdData.DisplayLayout.CaptionVisible = DefaultableBoolean.False;
            }

            _view.grdData.DataSource = null; // makes sure all sorting is removed

            _view.grdData.Tag = query; 
            _view.grdData.DataSource = dt;
        }

        public void OpenView(Query query, Sql8rView view)
        {
            string fileName = view.GetFullObjectName();
            setEditability(false, true);

            bindDataTable(query, view);
            _view.tslDataName.Text = fileName;
        }

        public void OpenTable(Query query, Sql8rTable table, bool editable)
        {
            string fileName = table.GetFullObjectName();
            setEditability(editable, !editable);

            bindDataTable(query, table);
            _view.tslDataName.Text = fileName;
        }


        public void OpenCode(Query query, string fileName)
        {
            setEditability(false, true);

            bindDataTable(query);
            _view.tslDataName.Text = fileName;
        }

        public void OpenQuery(DataSet ds, string fileName)
        {
            setEditability(false, true);
            if (ds == null || ds.Tables.Count == 0 || (ds.Tables.Count == 1 && ds.Tables[0].Rows.Count == 0))
            {
                _view.grdData.Text = "Query returned no data";
                _view.grdData.DisplayLayout.CaptionVisible = DefaultableBoolean.True;

                _view.grdData.DataSource = null;
            }
            else
            {
                if (ds.Tables.Count == 1)
                {
                    _view.grdData.DisplayLayout.CaptionVisible = DefaultableBoolean.False;

                    _view.grdData.DataSource = ds.Tables[0];
                }
                else
                {
                    _view.grdData.Text = "Query returned multiple data";
                    _view.grdData.DisplayLayout.CaptionVisible = DefaultableBoolean.True;

                    var par = new DataTable("ParentTable");
                    var colName = new DataColumn("name", typeof(string));
                    var colId = new DataColumn("id", typeof(string));

                    par.Columns.Add(colId);
                    par.Columns.Add(colName);
                    par.PrimaryKey = new[] {colId};


                    var d2 = new DataSet("new copy");
                    d2.Tables.Add(par);

                    int i = 1;
                    while (ds.Tables.Count > 0)
                    {
                        DataTable t = ds.Tables[0];

                        DataRow row = par.NewRow();
                        row["id"] = t.TableName;
                        row["name"] = string.Format("Result from query {0}", i);
                        par.Rows.Add(row);

                        var col = new DataColumn("id", typeof(string));
                        col.DefaultValue = t.TableName;
                        col.AllowDBNull = false;
                        t.Columns.Add(col);

                        ds.Tables.Remove(t);
                        d2.Tables.Add(t);

                        var rel1 = new DataRelation(string.Format("par-res-{0}", i), par.Columns["id"], t.Columns["id"]);
                        d2.Relations.Add(rel1);
                        i++;
                    }

                    _view.grdData.DataSource = d2;
                    _view.grdData.DisplayLayout.Bands[0].Columns[0].Hidden = true;
                    for (int j = 1; j < i; j++)
                    {
                        int nbrOfColumns = _view.grdData.DisplayLayout.Bands[j].Columns.Count;
                        _view.grdData.DisplayLayout.Bands[j].Columns[nbrOfColumns - 1].Hidden = true;
                    }
                }
            }


            _view.tslDataName.Text = fileName;
        }

        
    }
}