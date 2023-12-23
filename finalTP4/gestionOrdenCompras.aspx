<%@ Page Title="" Language="C#" MasterPageFile="~/paginaMaestra.Master" AutoEventWireup="true" CodeBehind="gestionOrdenCompras.aspx.cs" Inherits="finalTP4.gestionOrdenCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ordenCompra.aspx">Nueva orden de compra</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/consultarOrdenCompra.aspx">Consultar Ordenes de compra</asp:HyperLink>
</p>
</asp:Content>
