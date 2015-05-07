using System;
using System.IO;
using System.Text;
using Infragistics.Win.UltraWinTree;

namespace SQL8r.WinForms.NodeTypes.Project
{
	[Serializable]
	public class FileNode : UltraTreeNode, IComparable
	{
		public FileNode(FileSystemInfo file)
		{
			string name = file.Name;
			base.Text = name;
			base.Key = file.FullName;

			if (name.EndsWith(".CS", StringComparison.OrdinalIgnoreCase))
			{
				Override.NodeAppearance.Image = 13;
				Override.ActiveNodeAppearance.Image = 13;
			}
			else if (name.EndsWith(".VB", StringComparison.OrdinalIgnoreCase))
			{
				Override.NodeAppearance.Image = 16;
				Override.ActiveNodeAppearance.Image = 16;
			}
			else if (name.EndsWith(".SQL", StringComparison.OrdinalIgnoreCase))
			{
				Override.NodeAppearance.Image = 15;
				Override.ActiveNodeAppearance.Image = 15;
			}
		}

		public string FileName
		{
			get { return Text; }
		}

		#region IComparable Members

		public int CompareTo(object obj)
		{
			var node = obj as FileNode;
			if (node != null)
			{
				return string.Compare(Text, node.Text, StringComparison.OrdinalIgnoreCase);
			}
			return 1;
		}

		#endregion

		private ProjectNode getProjectNode(FolderNode node)
		{
			if (node != null)
			{
				while (node.Parent != null)
				{
					if (node.Parent is ProjectNode)
					{
						return node.Parent as ProjectNode;
					}
					node = node.Parent as FolderNode;
				}
			}
			return null;
		}

		public string GetFilePath()
		{
			string dirName = string.Empty;

			if (Parent is ProjectNode)
			{
				var pNode = (ProjectNode)Parent;

				dirName = pNode.FolderObject.ToString();
			}
			else if (Parent is FolderNode)
			{
				var foNode = (FolderNode)Parent;

				ProjectNode pNode = getProjectNode(foNode);

				var sb = new StringBuilder(foNode.FullPath);
				string reldirName = sb.Replace(pNode.Name + Path.DirectorySeparatorChar, "", 0, pNode.Name.Length + 1).ToString();

				dirName = Path.Combine(pNode.FolderObject.ToString(), reldirName);
			}

			string fileName = FileName;

			string filePath = string.Format(@"{0}{1}{2}", dirName, Path.DirectorySeparatorChar, fileName);
			return filePath;
		}
	}
}