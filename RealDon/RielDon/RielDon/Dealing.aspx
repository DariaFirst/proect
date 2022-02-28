<%@ Page Title="О нас" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Dealing.aspx.cs" Inherits="RielDon.Dealing" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Сделки</h2>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="Собственник:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="600px"></asp:DropDownList><br />
    <asp:Label ID="Label8" runat="server" Text="Покупатель:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Width="600px"></asp:DropDownList><br />
    <asp:Label ID="Label9" runat="server" Text="Риелтор:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" Width="600px"></asp:DropDownList><br />
    <asp:Label ID="Label10" runat="server" Text="Объект:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList4" runat="server" Width="700px"></asp:DropDownList><br />
    <asp:Label ID="Label4" runat="server" Text="Цена объекта:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="*число"></asp:Label><br/>
    <asp:Label ID="Label2" runat="server" Text="Риелторская наценка:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="*% от продаж, число"></asp:Label><br/>
    <asp:Label ID="Label5" runat="server" Text="Итоговая стоимость:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="*число"></asp:Label>
    <br />
    <asp:Label ID="Label11" runat="server" Text="Докумены:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" Width="448px" />
    <br/>
    <p><asp:Button ID="Button1" runat="server" Text="Добавить новую сделку" OnClick="Button1_Click" /></p>
    <h5>Список сотрудников</h5>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False" style="margin-bottom: 72px"> 
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
