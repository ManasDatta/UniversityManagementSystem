using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class DataAccess
{
    private SqlConnection connection;
    private SqlCommand command;

    public DataAccess()
    {
        string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
        this.connection = new SqlConnection(connStr);
    }

    public SqlDataReader getData(string sql)
    {
        this.command = new SqlCommand(sql, this.connection);
        this.connection.Open();
        SqlDataReader reader = this.command.ExecuteReader();
        return reader;
    }

    public int execute(string sql)
    {
        this.command = new SqlCommand(sql, this.connection);
        int affectedRows = this.command.ExecuteNonQuery();
        return affectedRows;
    }

    ~DataAccess()
    {
        this.connection.Close();
    }
}