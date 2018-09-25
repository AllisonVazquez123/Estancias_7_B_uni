  <%@ Page Title="" Language="C#" MasterPageFile="~/principal.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    
    
    <!--slider-->

  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
      <% Conexion con = new Conexion();
         System.Data.DataTable dt = con.selectDataTable("SELECT imagen FROM imagenSlider");
         byte[] imagen = null;%>
      <%imagen = (byte[])dt.Rows[0][0];
        string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(imagen);
        ImageSlider.ImageUrl = ImagenDataURL64; %>
    <div class="carousel-item active">
        <asp:Image ID="ImageSlider" CssClass="d-block w-100" ImagenUrl="https://www.petdarling.com/articulos/wp-content/uploads/2014/06/como-quitarle-las-pulgas-a-mi-perro.jpg" runat="server" />
      <!--<img class="d-block w-100" src="Img/RCC-3.jpg" alt="First slide">-->
    </div>
      
      <%for (int i = 1; i < dt.Rows.Count; i++)
          {
              imagen = (byte[])dt.Rows[i][0];
              ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(imagen);
              ImageSlider2.ImageUrl = ImagenDataURL64;
          %>
    <div class="carousel-item">
        <asp:Image ID="ImageSlider2" CssClass="d-block w-100" ImagenUrl="https://www.petdarling.com/articulos/wp-content/uploads/2014/06/como-quitarle-las-pulgas-a-mi-perro.jpg" runat="server" />
    </div>

      <%} %>
   
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
   
    <br>
    <br>
    <br>
    <br>   
        
           <div class="container">

     <div class="row">
         


            <br />
             <div style="margin:auto; margin-top:60px;">

             <%
                 dt = con.selectDataTable(Session["buscarprod"].ToString());
                 imagen = null;
                 for (int i = 0; i < dt.Rows.Count; i++)
                 {
                     titulo.InnerText = dt.Rows[i][1].ToString();
                     imagen = (byte[])dt.Rows[i][0];
                     ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(imagen);
                     imgPreview.ImageUrl = ImagenDataURL64;
             %>
                     <div class="card" style="width: 15rem; float:left; margin-left:30px; margin-bottom:30px;">
                         <asp:Image ID="imgPreview" width="200" Height="200" CssClass="card-img-top" style="margin:auto;" ImagenUrl="https://www.petdarling.com/articulos/wp-content/uploads/2014/06/como-quitarle-las-pulgas-a-mi-perro.jpg" runat="server" />
                      <div class="card-body">
                        <h5 ID="titulo" class="card-title" Runat="Server">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                       <asp:Button ID="btncarrito" runat="server" Text="añadir a carrito" class="btn btn-primary"></asp:Button>
                       
                      </div>
                    </div>
             <%
                     
                 }
             %>
                 </div>


        </div>


</div>
        
    <br>
    <br>
     

</asp:Content>



