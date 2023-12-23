<%@ Page Title="" Language="C#" MasterPageFile="~/paginaMaestra.Master" AutoEventWireup="true" CodeBehind="modificarCliente.aspx.cs" Inherits="finalTP4.modificarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Codigo de cliente a modificar: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-TDSHAI5\SQLEXPRESS;Initial Catalog=final_TP4;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM CLIENTES WHERE id_cliente = @id_cliente;">
            <SelectParameters>
                <asp:Parameter Name="id_cliente" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Nombre del cliente: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
        <asp:Label ID="Label4" runat="server"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-TDSHAI5\SQLEXPRESS;Initial Catalog=final_TP4;Integrated Security=True" ProviderName="System.Data.SqlClient" UpdateCommand="UPDATE CLIENTES SET nombre_cliente = @nombre_cliente">
            <UpdateParameters>
                <asp:Parameter Name="nombre_cliente" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
