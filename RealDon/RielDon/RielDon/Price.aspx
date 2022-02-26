<%@ Page Title="О нас" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Price.aspx.cs" Inherits="RielDon.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Купля-продажа</h2>
    <br/>
        <asp:Table ID="Table1" runat="server" Width="898px">
         <asp:TableRow>
            <asp:TableCell>
               Вид объекта
            </asp:TableCell>
            <asp:TableCell>
                Район
            </asp:TableCell>
            <asp:TableCell>
                Компактность
            </asp:TableCell>
            <asp:TableCell>
                Этаж
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200">
        <asp:ListItem>Вторичное</asp:ListItem>
        <asp:ListItem>Новостройка</asp:ListItem>
        <asp:ListItem>Коммерческое</asp:ListItem>
    </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
               <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200">
        <asp:ListItem>Ворошиловский</asp:ListItem>
        <asp:ListItem>Ленинский</asp:ListItem>
        <asp:ListItem>Пролетарский</asp:ListItem>
        <asp:ListItem>Железнодорожный</asp:ListItem>
        <asp:ListItem>Октябрьский</asp:ListItem>
        <asp:ListItem>Советский</asp:ListItem>
        <asp:ListItem>Кировский</asp:ListItem>
        <asp:ListItem>Первомайский</asp:ListItem>
    </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200">
        <asp:ListItem>Студия</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4+</asp:ListItem>
    </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="True" Width="200"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br/>
    <asp:Table ID="Table2" runat="server" Width="898px">
         <asp:TableRow>
            <asp:TableCell>
               Стоимость, руб
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;
            </asp:TableCell>
             <asp:TableCell>
                &nbsp;
            </asp:TableCell>
            <asp:TableCell>
                Площадь, кв.м
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="True" Width="150">от</asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox3" runat="server" Enabled="True" Width="150">до</asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox4" runat="server" Enabled="True" Width="150">от</asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox5" runat="server" Enabled="True" Width="150">до</asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="Button1" runat="server" Text="Поиск" Width="200" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <p>Результаты поиска...</p>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
