<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoFinalCrud.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="recursos/css/Estilo.css" rel="stylesheet" />
</head>
<body class="bg-light">
    <div class="contenedor">
        <div class="contenidoFormulariologin">
            <form id="form1" runat="server">
                <div class="form-control">
                    <div class="col-md-6 text-center-mb-5">
                        <asp:Label CssClass="h2" ID="label_Titulo" runat="server" Text="Bienvenido al sistema"></asp:Label>
                    </div>
                    <div>
                        <asp:Label  ID="label_Usuario" runat="server" Text="Usuario"></asp:Label>
                        <asp:TextBox ID="txt_Usuario" CssClass="form-control" runat="server" placeholder="Nombre de usuario"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="label_Contraseña" runat="server" Text="Contraseña"></asp:Label>
                        <asp:TextBox ID="txt_Contraseña" CssClass="form-control" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="boton_Ingresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="boton_Ingresar_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>