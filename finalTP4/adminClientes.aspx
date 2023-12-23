<%@ Page Title="" Language="C#" MasterPageFile="~/paginaMaestra.Master" AutoEventWireup="true" CodeBehind="adminClientes.aspx.cs" Inherits="finalTP4.adminClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/altaCliente.aspx">Alta de Clientes</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/bajaCliente.aspx">Baja de Clientes</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/modificarCliente.aspx">Modificar Clientes</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/consultarCliente.aspx">Consultar Clientes</asp:HyperLink>
</p>
<p>
</p>
</asp:Content>
