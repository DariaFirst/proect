<%@ Page Title="О нас" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Realtor.aspx.cs" Inherits="RielDon.Realtor" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Риелторы</h2>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="ФИО:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="600px"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="*Иванов Иван Иванович"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Номер телефона:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="*+7(999)999-99-99"></asp:Label><br/>
    <asp:Label ID="Label2" runat="server" Text="Дата приема:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="*01.01.2000"></asp:Label><br/>
    <asp:Label ID="Label5" runat="server" Text="Дата увольнения:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="*01.01.2000"></asp:Label><br/>
    <p><asp:Button ID="Button1" runat="server" Text="Добавить нового сотрудника" OnClick="Button1_Click" /></p>
    <h5>Список сотрудников</h5>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
