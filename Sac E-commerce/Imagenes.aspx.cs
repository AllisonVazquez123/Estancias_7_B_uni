using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Imagenes : System.Web.UI.Page
{
    Conexion con = new Conexion();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Button[] botones = new Button[10];
        for (int i = 0; i < 10; i++)
        {
            botones[i].Text = "Boton " + (i + 1).ToString();
            phProductos.Controls.Add(botones[i]);
        }
    }

    protected void BtnSubir_Click(object sender, EventArgs e)
    {
        int Tamanio = fuloadImagen.PostedFile.ContentLength;
        byte[] ImagenOriginal = new byte[Tamanio];
        fuloadImagen.PostedFile.InputStream.Read(ImagenOriginal, 0, Tamanio);
        Bitmap ImagenOriginalBinaria = new Bitmap(fuloadImagen.PostedFile.InputStream);

        SqlConnection sc = new SqlConnection();
        sc.ConnectionString = con.cadena;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO Imagen(Imagen, Titulo) VALUES(@imagen,@titulo)";
        cmd.Parameters.Add("@imagen", SqlDbType.Image).Value = ImagenOriginal;
        cmd.Parameters.Add("@titulo", SqlDbType.Text).Value = txtTitulo.Text;
        cmd.CommandType = CommandType.Text;
        cmd.Connection = sc;
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
      
    }



}