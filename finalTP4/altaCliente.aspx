<%@ Page Title="" Language="C#" MasterPageFile="~/paginaMaestra.Master" AutoEventWireup="true" CodeBehind="altaCliente.aspx.cs" Inherits="finalTP4.altaCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Nombre Del Cliente: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dar de Alta" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" InsertCommand="INSERT INTO CLIENTES VALUES (@nombre_cliente);" ConnectionString="<%$ ConnectionStrings:final_TP4ConnectionString %>" ProviderName="<%$ ConnectionStrings:final_TP4ConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:Parameter Name="nombre_cliente" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
