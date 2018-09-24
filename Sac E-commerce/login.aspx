<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Estilos Internos -->
<link href="Styles/loginstyle.css" rel="stylesheet" />
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
             <div class="form-group shadow-lg p-3 mb-5 bg-white rounded">
      <h1 class="h3 mb-3 font-weight-normal text-center">Login</h1>
      <br />
      <label for="usuario" class="sr-only">Usuario</label>
      <asp:TextBox ID="txtnombreUsuario" runat="server" Class="form-control" placeholder="Nombre de usuario" OnTextChanged="txtnombreUsuario_TextChanged"></asp:TextBox>     
           
      <br />
      <label for="inputPassword" class="sr-only">Contraseña</label>
       <asp:TextBox ID="txtpassword" runat="server" Class="form-control" type="password" placeholder="Contraseña" required ></asp:TextBox>

      <div class="checkbox mb-3">
          <br/>
        <div class="text-center">
      
            

            <br />
                 <asp:Label ID="lblalerta" runat="server" Text="" class="alert alert-secondary"> Usuario o Contraseña incorrectos</asp:Label>
        </div>

      </div>
    <asp:Button ID="btn1" runat="server" class="btn btn-lg btn btn-outline-secondary btn-block" Text="Acceder" OnClick="btn1_Click" />
                 

      <p class="mt-5 mb-3 text-muted text-center">&copy; Created by Evolution Software</p>
    </div>
        </div>
    </form>
</body>
</html>
