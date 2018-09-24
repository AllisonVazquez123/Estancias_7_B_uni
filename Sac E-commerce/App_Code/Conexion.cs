using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Descripción breve de Conexion
/// </summary>
public class Conexion
{
    public string cadena = "Data Source=LAPTOP-P493QLMI\\SQLEXPRESS;Initial Catalog =es_BODEGONprueba; Integrated Security = True; User ID =sa ;Password=sacecommerce123;";
    public SqlConnection sc = new SqlConnection();

    public Conexion()
    {

        sc.ConnectionString = cadena;
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public bool abrir_conexion()
    {
        sc.ConnectionString = cadena;
        bool resultado;
        try
        {
            sc.Open();
            resultado = true;
        }
        catch
        {
            resultado = false;
        }
        return resultado;
    }

    public void cerrar_conexion()
    {
        sc.Close();
    }

    public void insert(string query)
    {
        
        SqlCommand comando = new SqlCommand(query, sc);
        SqlTransaction transaction = sc.BeginTransaction();
        comando.Transaction = transaction;
        comando.ExecuteNonQuery();
        transaction.Commit();
    }

    public DataTable selectDataTable(string consulta)
    {
        DataTable _Dt = new DataTable();
      
        try
        {
            SqlCommand _comando = new SqlCommand(consulta, sc);
            SqlDataAdapter adaptador = new SqlDataAdapter(_comando);
            adaptador.Fill(_Dt);
        }
        catch (Exception ex)
        {
     
        }

        
        return _Dt;
    }


}