<%@ Page Title="" Language="C#" MasterPageFile="~/paginaMaestra.Master" AutoEventWireup="true" CodeBehind="ordenCompra.aspx.cs" Inherits="finalTP4.ordenCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="Label1" runat="server" Text="Cliente: "></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre_cliente" DataValueField="id_cliente">
    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Componente: "></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre_componente" DataValueField="id_componente">
    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
    <asp:Label ID="Label3" runat="server"></asp:Label>
    <asp:Label ID="Label4" runat="server"></asp:Label>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:final_TP4ConnectionString %>" SelectCommand="SELECT * FROM [CLIENTES]"></asp:SqlDataSource>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:final_TP4ConnectionString %>" SelectCommand="SELECT * FROM [COMPONENTES]"></asp:SqlDataSource>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" InsertCommand="INSERT INTO ORDENES VALUES (@id_componente, @fecha_orden, @id_cliente);" ConnectionString="<%$ ConnectionStrings:final_TP4ConnectionString %>" ProviderName="<%$ ConnectionStrings:final_TP4ConnectionString.ProviderName %>">
        <InsertParameters>
            <asp:Parameter Name="id_componente" />
            <asp:Parameter Name="fecha_orden" />
            <asp:Parameter Name="id_cliente" />
        </InsertParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
