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
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="id" AllowSorting="True" Width="1300px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="address" HeaderText="Адрес" SortExpression="address" />
            <asp:BoundField DataField="owner" HeaderText="Собственник" SortExpression="owner" />
            <asp:BoundField DataField="region" HeaderText="Район" SortExpression="region" />
            <asp:BoundField DataField="objecttype" HeaderText="Объект" SortExpression="objecttype" />
            <asp:BoundField DataField="compactness" HeaderText="Компактность" SortExpression="compactness" />
            <asp:BoundField DataField="square" HeaderText="Площадь" SortExpression="square" />
            <asp:BoundField DataField="floor" HeaderText="Этаж" SortExpression="floor" />
            <asp:BoundField DataField="price" HeaderText="Цена" SortExpression="price" />
            <asp:CheckBoxField DataField="status" HeaderText="Статус" SortExpression="status" />
            <asp:BoundField DataField="description" HeaderText="Описание" SortExpression="description" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
</asp:GridView>
    <h5>Список клиентов</h5>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" Width="914px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="fio" HeaderText="ФИО" SortExpression="fio" />
            <asp:BoundField DataField="passport" HeaderText="Паспортные данные" SortExpression="passport" />
            <asp:BoundField DataField="phone" HeaderText="Телефон" SortExpression="phone" />
            <asp:BoundField DataField="birthdate" HeaderText="Дата рождения" SortExpression="birthdate" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:User %>" DeleteCommand="DELETE FROM [building] WHERE [id] = ? AND (([address] = ?) OR ([address] IS NULL AND ? IS NULL)) AND (([owner] = ?) OR ([owner] IS NULL AND ? IS NULL)) AND (([region] = ?) OR ([region] IS NULL AND ? IS NULL)) AND (([objecttype] = ?) OR ([objecttype] IS NULL AND ? IS NULL)) AND (([compactness] = ?) OR ([compactness] IS NULL AND ? IS NULL)) AND (([square] = ?) OR ([square] IS NULL AND ? IS NULL)) AND (([floor] = ?) OR ([floor] IS NULL AND ? IS NULL)) AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL)) AND [status] = ? AND (([description] = ?) OR ([description] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [building] ([id], [address], [owner], [region], [objecttype], [compactness], [square], [floor], [price], [status], [description]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:User.ProviderName %>" SelectCommand="SELECT * FROM [building]" UpdateCommand="UPDATE [building] SET [address] = ?, [owner] = ?, [region] = ?, [objecttype] = ?, [compactness] = ?, [square] = ?, [floor] = ?, [price] = ?, [status] = ?, [description] = ? WHERE [id] = ? AND (([address] = ?) OR ([address] IS NULL AND ? IS NULL)) AND (([owner] = ?) OR ([owner] IS NULL AND ? IS NULL)) AND (([region] = ?) OR ([region] IS NULL AND ? IS NULL)) AND (([objecttype] = ?) OR ([objecttype] IS NULL AND ? IS NULL)) AND (([compactness] = ?) OR ([compactness] IS NULL AND ? IS NULL)) AND (([square] = ?) OR ([square] IS NULL AND ? IS NULL)) AND (([floor] = ?) OR ([floor] IS NULL AND ? IS NULL)) AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL)) AND [status] = ? AND (([description] = ?) OR ([description] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_owner" Type="Int32" />
            <asp:Parameter Name="original_owner" Type="Int32" />
            <asp:Parameter Name="original_region" Type="String" />
            <asp:Parameter Name="original_region" Type="String" />
            <asp:Parameter Name="original_objecttype" Type="String" />
            <asp:Parameter Name="original_objecttype" Type="String" />
            <asp:Parameter Name="original_compactness" Type="String" />
            <asp:Parameter Name="original_compactness" Type="String" />
            <asp:Parameter Name="original_square" Type="String" />
            <asp:Parameter Name="original_square" Type="String" />
            <asp:Parameter Name="original_floor" Type="String" />
            <asp:Parameter Name="original_floor" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_status" Type="Boolean" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="owner" Type="Int32" />
            <asp:Parameter Name="region" Type="String" />
            <asp:Parameter Name="objecttype" Type="String" />
            <asp:Parameter Name="compactness" Type="String" />
            <asp:Parameter Name="square" Type="String" />
            <asp:Parameter Name="floor" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="owner" Type="Int32" />
            <asp:Parameter Name="region" Type="String" />
            <asp:Parameter Name="objecttype" Type="String" />
            <asp:Parameter Name="compactness" Type="String" />
            <asp:Parameter Name="square" Type="String" />
            <asp:Parameter Name="floor" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_owner" Type="Int32" />
            <asp:Parameter Name="original_owner" Type="Int32" />
            <asp:Parameter Name="original_region" Type="String" />
            <asp:Parameter Name="original_region" Type="String" />
            <asp:Parameter Name="original_objecttype" Type="String" />
            <asp:Parameter Name="original_objecttype" Type="String" />
            <asp:Parameter Name="original_compactness" Type="String" />
            <asp:Parameter Name="original_compactness" Type="String" />
            <asp:Parameter Name="original_square" Type="String" />
            <asp:Parameter Name="original_square" Type="String" />
            <asp:Parameter Name="original_floor" Type="String" />
            <asp:Parameter Name="original_floor" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_status" Type="Boolean" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
