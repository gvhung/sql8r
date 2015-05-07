using System;
using Infragistics.Win.UltraWinTree;
using SQL8r.Logic.DomainModel;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class FunctionNode : UltraTreeNode, IComparable
    {
        public FunctionNode(string name, string schema)
        {
            base.Text = string.Format("{0}.{1}", schema, name);
            FunctionName = name;
            SchemaName = schema;

            Override.NodeAppearance.Image = 7;
            Override.ActiveNodeAppearance.Image = 7;
        }

        public Sql8rFunction FunctionObject { get; set; }

        public string FunctionName { get; private set; }

        public string SchemaName { get; private set; }

        #region IComparable Members

        public int CompareTo(object obj)
        {
            var node = obj as FunctionNode;
            if (node != null)
            {
                return string.Compare(Text, node.Text, StringComparison.OrdinalIgnoreCase);
            }
            return 1;
        }

        #endregion
    }
}