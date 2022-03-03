<%@ Page Title="О нас" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Price.aspx.cs" Inherits="RielDon.Price" %>

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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" Width="1200px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" SortExpression="id" />
            <asp:BoundField DataField="address" HeaderText="Адрес" SortExpression="address" />
            <asp:BoundField DataField="fio" HeaderText="Собственник" SortExpression="fio" />
            <asp:BoundField DataField="region" HeaderText="Район" SortExpression="region" />
            <asp:BoundField DataField="objecttype" HeaderText="Тип" SortExpression="objecttype" />
            <asp:BoundField DataField="compactness" HeaderText="Компактность" SortExpression="compactness" />
            <asp:BoundField DataField="floor" HeaderText="Этаж" SortExpression="floor" />
            <asp:BoundField DataField="price" HeaderText="Цена" SortExpression="price" />
            <asp:CheckBoxField DataField="status" HeaderText="Статус" SortExpression="status" />
            <asp:BoundField DataField="description" HeaderText="Описание" SortExpression="description" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:User %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:User.ProviderName %>" SelectCommand="SELECT * FROM [Z2]">
    </asp:SqlDataSource>
</asp:Content>
