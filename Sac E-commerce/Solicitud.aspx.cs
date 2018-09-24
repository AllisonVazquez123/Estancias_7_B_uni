using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Solicitud : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnenviar_Click(object sender, EventArgs e)

    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("ali4298.jebp@gmail.com");
        msg.Body = "El nombre del usuario es: " + txtname.Text+ "\nLa dirección de correo electronico es: " + Txtemail.Text;
        msg.Subject = "Solicitud de registro";
        msg.To.Add("ali4298.jebp@gmail.com");

        SmtpClient cliente = new SmtpClient("smtp.gmail.com");
        cliente.Port = 587;
        cliente.Credentials = new NetworkCredential("ali4298jebp@gmail.com","040298.jebp");
        cliente.EnableSsl = true;
    

        try
        {

            cliente.Send(msg);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scritp", "<script> swal('Buen trabajo', 'Mensaje enviado'); </script>");

        }
        catch (Exception ex)
        {

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scritp", "<script> swal('Error', 'No se pudo enviar el mensaje', 'error'); </script>");
        }



    }
}