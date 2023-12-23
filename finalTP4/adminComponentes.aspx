<%@ Page Title="" Language="C#" MasterPageFile="~/paginaMaestra.Master" AutoEventWireup="true" CodeBehind="adminComponentes.aspx.cs" Inherits="finalTP4.adminComponentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/altaComponente.aspx">Alta de Componente</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/bajaComponente.aspx">Baja de Componente</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/modificarComponente.aspx">Modificar Componente</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/consultarComponentes.aspx">Consultar Componentes</asp:HyperLink>
</p>
</asp:Content>
