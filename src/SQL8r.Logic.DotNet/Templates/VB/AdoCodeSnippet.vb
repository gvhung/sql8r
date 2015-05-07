Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports SQL8r.Logic.Interfaces

Namespace SQL8r

    Public Class AdoCodeSnippet
        Implements ISnippet

        Public Function GetMyData() As DataSet Implements ISnippet.GetMyData

            Dim selectSql As String = "SELECT * FROM dbo.DatabaseLog"
            Dim connectionString As String = "SERVER=.;DATABASE=AdventureWorks2008;Trusted_Connection=True;"

            Dim cn As SqlConnection = New SqlConnection(connectionString)
            Dim dc As SqlCommand = New SqlCommand(selectSql, cn)
            Dim da As SqlDataAdapter = New SqlDataAdapter(dc)
            Dim ds As DataSet = New DataSet()
            da.Fill(ds)

            Return ds
        End Function
    End Class
End Namespace