<%@ Page Title="" Language="C#" MasterPageFile="~/principal.master" AutoEventWireup="true" CodeFile="Solicitud.aspx.cs" Inherits="Solicitud" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
<br>
<br>
<br>
<br>

  
  
  <form id="form1" class="card text-center">
      <div class="card" style="width: 40rem; position: relative; left: 28%;">
  <div class="card-header">
 
        <div class="form-group">
            <label for="formGroupExampleInput">Nombre Completo:</label>
            <asp:TextBox ID="txtname" runat="server" type="text" class="form-control" placeholder="Ingresar nombre"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Correo Electronico:</label>
            <asp:TextBox ID="Txtemail" runat="server" type="email" class="form-control"  aria-describedby="emailHelp" placeholder="Ingresar Correo Electronico"></asp:TextBox>
        </div>
       <div class="form-group">

    <label for="exampleInputPassword1">Ingresar Contraseña:</label>
    <asp:TextBox ID="TxtPass" runat="server" class="form-control" placeholder="Ingresar Contraseña"></asp:TextBox>
   
  </div>
       <div class="form-group">
    <label for="exampleInputPassword1">Volver a Ingresar Contraseña:</label>
    <asp:TextBox ID="TxtConfirmar" runat="server" class="form-control" placeholder="Confirmar Contraseña" type="password"></asp:TextBox>
  </div>
      
          <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault03">Ciudad:</label>
        <asp:TextBox ID="txtCiudad" runat="server" class="form-control"  placeholder="Ingresar Ciudad"></asp:TextBox>
    
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault04">Estado:</label>
         <asp:TextBox ID="txtEstado" runat="server" class="form-control" placeholder="Ingresar Estado"></asp:TextBox>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault05">Codigo Postal:</label>
         <asp:TextBox ID="TextBox2" runat="server"  class="form-control"  placeholder="Ingresar Codigo Postal"></asp:TextBox>

    </div>
       
     <asp:Button ID="btnenviar" runat="server" type="submit" class="btn btn-primary" Text="Enviar" OnClick="btnenviar_Click"> </asp:Button>
  
  </div>   

      </div>

    



</form>

</asp:Content>

