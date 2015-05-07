using System;
using Infragistics.Win.UltraWinTree;
using SQL8r.Logic.DomainModel;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class IndexNode : UltraTreeNode, IComparable
    {
        public IndexNode(string name)
        {
            base.Text = name;
        }

        public Sql8rIndex IndexObject { get; set; }

        #region IComparable Members

        public int CompareTo(object obj)
        {
            var node = obj as IndexNode;
            if (node != null)
            {
                return string.Compare(Text, node.Text, StringComparison.OrdinalIgnoreCase);
            }
            return 1;
        }

        #endregion
    }
}