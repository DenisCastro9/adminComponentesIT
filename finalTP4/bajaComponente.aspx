<%@ Page Title="" Language="C#" MasterPageFile="~/paginaMaestra.Master" AutoEventWireup="true" CodeBehind="bajaComponente.aspx.cs" Inherits="finalTP4.bajaComponente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Codigo de Componente a borrar: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" DeleteCommand="DELETE FROM COMPONENTES WHERE (id_componente = @id_componente)" ConnectionString="<%$ ConnectionStrings:final_TP4ConnectionString %>" ProviderName="<%$ ConnectionStrings:final_TP4ConnectionString.ProviderName %>">
            <DeleteParameters>
                <asp:Parameter Name="id_componente" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
