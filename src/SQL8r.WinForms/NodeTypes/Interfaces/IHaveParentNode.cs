using Infragistics.Win.UltraWinTree;

namespace SQL8r.WinForms.NodeTypes.Interfaces
{
	internal interface IHaveParentNode
	{
		UltraTreeNode ParentNode { get; }
	}
}