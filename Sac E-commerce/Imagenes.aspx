<%@ Page Title="" Language="C#" MasterPageFile="~/principal.master" AutoEventWireup="true" CodeFile="Imagenes.aspx.cs" Inherits="Imagenes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br>
     <br>
     <br>
     <br>
    <div class="container">

     <div class="row">
         


            <br />
             <div style="margin:auto; margin-top:60px;">

             <%
                 Conexion con = new Conexion();
                 System.Data.DataTable dt = con.selectDataTable(Session["buscarprod"].ToString());
                 byte[] imagen = null;
                 for (int i = 0; i < dt.Rows.Count; i++)
                 {
                     titulo.InnerText = dt.Rows[i][1].ToString();
                     Desc.InnerText = dt.Rows[i][2].ToString();
                     imagen = (byte[])dt.Rows[i][0];
                     string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(imagen);
                     imgPreview.ImageUrl = ImagenDataURL64;
             %>
                     <div class="card" style="width: 15rem; float:left; margin-left:30px; margin-bottom:30px;">
                         <asp:Image ID="imgPreview" width="200" Height="200" CssClass="card-img-top" style="margin:auto;" ImagenUrl="https://www.petdarling.com/articulos/wp-content/uploads/2014/06/como-quitarle-las-pulgas-a-mi-perro.jpg" runat="server" />
                      <div class="card-body">
                        <h5 ID="titulo" class="card-title" Runat="Server">Card title</h5>
                        <p ID="Desc" runat="server" class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                      </div>
                    </div>
             <%
                     
                 }
             %>
                 </div>
            
            <br>
            <br>

            <asp:FileUpload ID="fuloadImagen" accept=".jpg" runat="server" CssClass="form-control"/>
            <br>
            <br>
             Título de imagen:
            <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control" />
            <br>
             <asp:Button ID="BtnSubir" runat="server" Text="Button" CssClass="form-control" OnClick="BtnSubir_Click"  />

        </div>

        <div class="row">

            <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
            <ItemTemplate>
        
            </ItemTemplate>
        </div>
        </div>

</asp:Content>
