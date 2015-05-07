using System;
using System.Drawing;
using Infragistics.Win.UltraWinTree;
using SQL8r.Logic.Factories;
using SQL8r.WinForms.NodeTypes.Interfaces;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class SystemFunctionsNode : UltraTreeNode, IFolderNode, IComparable
    {
        public SystemFunctionsNode(ServerVersionId @param)
        {
            base.Text = "System Functions";
            Override.NodeAppearance.Image = 0;
            Override.ActiveNodeAppearance.Image = 1;
            Override.NodeAppearance.ForeColor = Color.Red;
        }

        public bool IsHidden { get; set; }

        #region IComparable Members

        public int CompareTo(object obj)
        {
            return -1;
        }

        #endregion
    }
}