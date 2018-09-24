using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class principal : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        btnCerrar.Visible = false;
        Btninicio.Visible = false;
        if (Session["user"].ToString() == "")
        {
            Btninicio.Visible = true;
        }
        else
        {
            btnCerrar.Visible = true;
        }
    }

    protected void Btninicio_Click(object sender, EventArgs e)
    {
        /*if(Btninicio.Text == "Cerrar sesion")
        {
            Session["user"] = "";
        }*/
        Server.Transfer("login.aspx", true);
    }

    protected void btnCerrar_Click1(object sender, EventArgs e)
    {
        Session["user"] = "";
        Server.Transfer("login.aspx", true);
    }

    protected void btnbuscar_Click1(object sender, EventArgs e)
    {
        Session["buscarprod"] = string.Format("select imagen, titulo, descripción from imagen where titulo like '%{0}%'", txtbuscar.Text);

        Response.Redirect("Imagenes.aspx");
        
    }
}
