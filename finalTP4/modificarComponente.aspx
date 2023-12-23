<%@ Page Title="" Language="C#" MasterPageFile="~/paginaMaestra.Master" AutoEventWireup="true" CodeBehind="modificarComponente.aspx.cs" Inherits="finalTP4.modificarComponente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Codigo de Componente a Modificar: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM COMPONENTES WHERE (id_componente = @id_componente);" ConnectionString="<%$ ConnectionStrings:final_TP4ConnectionString %>" ProviderName="<%$ ConnectionStrings:final_TP4ConnectionString.ProviderName %>">
            <SelectParameters>
                <asp:Parameter Name="id_componente" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Nombre del Componente: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Web del Componente: "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Portada del Componente: "></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" UpdateCommand="UPDATE COMPONENTES SET nombre_componente = @nombre_componente, web_componente = @web_componente, portada = @portada;" ConnectionString="<%$ ConnectionStrings:final_TP4ConnectionString %>" ProviderName="<%$ ConnectionStrings:final_TP4ConnectionString.ProviderName %>">
            <UpdateParameters>
                <asp:Parameter Name="nombre_componente" />
                <asp:Parameter Name="web_componente" />
                <asp:Parameter Name="portada" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
