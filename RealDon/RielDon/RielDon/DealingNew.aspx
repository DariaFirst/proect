<%@ Page Title="О нас" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="DealingNew.aspx.cs" Inherits="RielDon.DealingNew" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Сделки</h2>
    <br />
    <asp:Label ID="Label12" runat="server" Text="Дата сделки от:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="300px" TextMode="Date"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" Text=" до &nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="300px" TextMode="Date"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Поиск по дате" OnClick="Button1_Click" />
    <br/>
    <p>
    <asp:Label ID="Label14" runat="server" Text="Сделка №:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Поиск по номеру сделки" />
    </p>
<p>
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Сбросить" />
    </p>
    <h5>Список сделок</h5>
        
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False" Width="1300px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" SortExpression="id" />
            <asp:BoundField DataField="documents" HeaderText="documents" SortExpression="documents" />
            <asp:BoundField DataField="Z1.fio" HeaderText="Z1.fio" SortExpression="Z1.fio" />
            <asp:BoundField DataField="dealingZ.user.fio" HeaderText="dealingZ.user.fio" SortExpression="dealingZ.user.fio" />
            <asp:BoundField DataField="realtor.fio" HeaderText="realtor.fio" SortExpression="realtor.fio" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="expenses" HeaderText="expenses" SortExpression="expenses" />
            <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:User %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:User.ProviderName %>" SelectCommand="SELECT * FROM [dealingZ]">
    </asp:SqlDataSource>
    </asp:Content>
