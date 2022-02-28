<%@ Page Title="О нас" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Building.aspx.cs" Inherits="RielDon.Building" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Новый объект</h2>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="Адрес:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="700px"></asp:TextBox><br />
    <asp:Label ID="Label8" runat="server" Text="&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *Г. Ростов-на-Дону, Первомайский район, ул. Малиновского 46, 2 подъезд, кв. 186, 344016"></asp:Label>
    <br />
    <asp:Label ID="Label9" runat="server" Text="Собственник:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="fio" DataValueField="id" Width="640px"></asp:DropDownList>
    <br />
    <asp:Label ID="Label12" runat="server" Text="Район:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="370px">
        <asp:ListItem>Ворошиловский</asp:ListItem>
        <asp:ListItem>Ленинский</asp:ListItem>
        <asp:ListItem>Пролетарский</asp:ListItem>
        <asp:ListItem>Железнодорожный</asp:ListItem>
        <asp:ListItem>Октябрьский</asp:ListItem>
        <asp:ListItem>Советский</asp:ListItem>
        <asp:ListItem>Кировский</asp:ListItem>
        <asp:ListItem>Первомайский</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label11" runat="server" Text="Вид объекта:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="315px">
        <asp:ListItem>Вторичное</asp:ListItem>
        <asp:ListItem>Новостройка</asp:ListItem>
        <asp:ListItem>Коммерческое</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label10" runat="server" Text="Компактность:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="300px">
        <asp:ListItem>Студия</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4+</asp:ListItem>
    </asp:DropDownList>
    <br />

    <asp:Label ID="Label2" runat="server" Text="Площадь:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="*Число в кв.м"></asp:Label>
    <br />
    <asp:Label ID="Label13" runat="server" Text="Этаж:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
    <asp:Label ID="Label14" runat="server" Text="*Число"></asp:Label>
    <br/>
    <asp:Label ID="Label4" runat="server" Text="Стоимость:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="*Число"></asp:Label>
    <br />
    <asp:Label ID="Label15" runat="server" Text="Статус продажи:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList6" runat="server" Width="160px">
        <asp:ListItem Value="1">Продано</asp:ListItem>
        <asp:ListItem Value="0">Продается</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br/>
    <asp:Label ID="Label5" runat="server" Text="Описание:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" Width="700px" Height="100px" TextMode="MultiLine"></asp:TextBox>
    <br/>
    <p><asp:Button ID="Button1" runat="server" Text="Добавить новый объект" OnClick="Button1_Click" /></p>
    <h5>Список объектов</h5>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2"></asp:GridView>
    <h5>Список клиентов</h5>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="fio" HeaderText="fio" SortExpression="fio" />
            <asp:BoundField DataField="passport" HeaderText="passport" SortExpression="passport" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="birthdate" HeaderText="birthdate" SortExpression="birthdate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:User %>" DeleteCommand="DELETE FROM [user] WHERE [id] = ? AND (([fio] = ?) OR ([fio] IS NULL AND ? IS NULL)) AND (([passport] = ?) OR ([passport] IS NULL AND ? IS NULL)) AND (([phone] = ?) OR ([phone] IS NULL AND ? IS NULL)) AND (([birthdate] = ?) OR ([birthdate] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [user] ([id], [fio], [passport], [phone], [birthdate]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:User.ProviderName %>" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [fio] = ?, [passport] = ?, [phone] = ?, [birthdate] = ? WHERE [id] = ? AND (([fio] = ?) OR ([fio] IS NULL AND ? IS NULL)) AND (([passport] = ?) OR ([passport] IS NULL AND ? IS NULL)) AND (([phone] = ?) OR ([phone] IS NULL AND ? IS NULL)) AND (([birthdate] = ?) OR ([birthdate] IS NULL AND ? IS NULL))" ConflictDetection="CompareAllValues">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_fio" Type="String" />
            <asp:Parameter Name="original_fio" Type="String" />
            <asp:Parameter Name="original_passport" Type="String" />
            <asp:Parameter Name="original_passport" Type="String" />
            <asp:Parameter Name="original_phone" Type="String" />
            <asp:Parameter Name="original_phone" Type="String" />
            <asp:Parameter Name="original_birthdate" Type="DateTime" />
            <asp:Parameter Name="original_birthdate" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="fio" Type="String" />
            <asp:Parameter Name="passport" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="birthdate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fio" Type="String" />
            <asp:Parameter Name="passport" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="birthdate" Type="DateTime" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_fio" Type="String" />
            <asp:Parameter Name="original_fio" Type="String" />
            <asp:Parameter Name="original_passport" Type="String" />
            <asp:Parameter Name="original_passport" Type="String" />
            <asp:Parameter Name="original_phone" Type="String" />
            <asp:Parameter Name="original_phone" Type="String" />
            <asp:Parameter Name="original_birthdate" Type="DateTime" />
            <asp:Parameter Name="original_birthdate" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

</asp:Content>
