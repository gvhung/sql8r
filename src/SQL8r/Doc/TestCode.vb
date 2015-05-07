Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports Infragistics.Win.UltraWinTree

Namespace SQL8r.WinForms.NodeTypes.Project

    Public Class FileNode
        Inherits UltraTreeNode



        Public Function GetFileName() As String

            Return base.Text
        End Function

    End Class
End Namespace
