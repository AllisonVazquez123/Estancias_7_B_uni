using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class login : System.Web.UI.Page
{
    Conexion con = new Conexion();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblalerta.Visible = false;
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        
        con.abrir_conexion();
        DataTable dt = con.selectDataTable(string.Format("select nombre_usuario from evol_usuarios where nombre_usuario='{0}' and pasword='{1}'", txtnombreUsuario.Text, txtpassword.Text));
        if (dt.Rows.Count>0)
        {
            Session["user"] = dt.Rows[0].ToString();
            Server.Transfer("Default.aspx", true);
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scritp", "<script> swal('Error!', 'Usuario o contraseña incorrectos!', 'error'); </script>");
        }
      
        con.cerrar_conexion();

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtnombreUsuario_TextChanged(object sender, EventArgs e)
    {

    }
}