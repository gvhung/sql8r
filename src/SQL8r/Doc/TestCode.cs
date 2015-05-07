using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Infragistics.Win.UltraWinTree;

namespace SQL8r.WinForms.NodeTypes.Project
{
    public class FileNode : UltraTreeNode
    {
        public FileNode(string name)
        {
            base.Text = name;
        }

        public string FileName
        {
            get { return base.Text; }
        }
    }
}
