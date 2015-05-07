using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using SQL8r.Logic.Interfaces;

namespace SQL8r
{
    public class AdoCodeSnippet : ISnippet
    {
        public DataSet GetMyData()
        {
            return GetMyDataAdo();
        }

        

        private DataSet GetMyDataAdo()
        {
            string selectSql = "SELECT * FROM dbo.DatabaseLog";
            string connectionString = "SERVER=.;DATABASE=AdventureWorks2008;Trusted_Connection=True;";

            SqlConnection cn = new SqlConnection(connectionString);
            SqlCommand dc = new SqlCommand(selectSql, cn);
            SqlDataAdapter da = new SqlDataAdapter(dc);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
    }
}