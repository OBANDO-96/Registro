<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroEstudiantes.aspx.cs" Inherits="ProyectoFinalCrud.RegistroEstudiantes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="recursos/css/Estilo.css" rel="stylesheet" />
</head>
<body>
    <div class="contenedor">
        <div class="contenidoFormulario">
            <form id="form1" runat="server">
                <div class="form-control">
                    <div class="col-md-6 text-center-mb-5">
                        <asp:Label class="h2" ID="label_TituloRegi" runat="server" Text="Registro del alumno"></asp:Label>
                    </div>
                    
                    <div>
                        <asp:Label ID="label_NombreApellido" runat="server" Text="Nombre"></asp:Label>
                        <asp:TextBox ID="txt_NombreApellido" runat="server" class="form-control" placeholder="Nombres y Apellidos"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="label_Cedula" runat="server" Text="Cedula"></asp:Label>
                        <asp:TextBox ID="txt_Cedula" runat="server" class="form-control" placeholder="Cedula"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="label_FechaNaci" runat="server" Text="Fecha de nacimiento"></asp:Label>
                        <asp:TextBox ID="txt_Fecha" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                    </div>                    
                    <div>
                        <asp:Label ID="label_Curso" runat="server" Text="Curso"></asp:Label>
                        <asp:TextBox ID="txt_Curso" runat="server" class="form-control" placeholder="Curso"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="label_Telf" runat="server" Text="Telefono"></asp:Label>
                        <asp:TextBox ID="txt_Telf" runat="server" class="form-control" placeholder="Telefono"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="label_Email" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txt_Email" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="label_Direccion" runat="server" Text="Direccion"></asp:Label>
                        <asp:TextBox ID="txt_Direccion" runat="server" class="form-control" placeholder="Direccion"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="label_Representante" runat="server" Text="Respresentante"></asp:Label>
                        <asp:TextBox ID="txt_Representante" runat="server" class="form-control"  placeholder="Representante"></asp:TextBox>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="btn_Registrar" CssClass="btn btn-primary btn-dark" runat="server" Text="Registrar" OnClick="btn_Registrar_Click" />
                    </div>
                </div>
                <br />
                <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                <asp:BoundField DataField="Fecha_nacimiento" HeaderText="Fecha_nacimiento" SortExpression="Fecha_nacimiento" />
                <asp:BoundField DataField="Curso" HeaderText="Curso" SortExpression="Curso" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Representante" HeaderText="Representante" SortExpression="Representante" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [estudiantes] WHERE [Id] = ?" InsertCommand="INSERT INTO [estudiantes] ([Id], [Nombre], [Cedula], [Fecha de nacimiento], [Curso], [Telefono], [Email], [Direccion], [Representante]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [estudiantes]" UpdateCommand="UPDATE [estudiantes] SET [Nombre] = ?, [Cedula] = ?, [Fecha de nacimiento] = ?, [Curso] = ?, [Telefono] = ?, [Email] = ?, [Direccion] = ?, [Representante] = ? WHERE [Id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Cedula" Type="String" />
                <asp:Parameter Name="Fecha_de_nacimiento" Type="String" />
                <asp:Parameter Name="Curso" Type="String" />
                <asp:Parameter Name="Telefono" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Representante" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Cedula" Type="String" />
                <asp:Parameter Name="Fecha_de_nacimiento" Type="String" />
                <asp:Parameter Name="Curso" Type="String" />
                <asp:Parameter Name="Telefono" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Representante" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
            </form>
        </div>
    </div>
    
    
</body>
</html>
