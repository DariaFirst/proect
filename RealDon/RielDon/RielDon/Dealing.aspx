<%@ Page Title="О нас" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Dealing.aspx.cs" Inherits="RielDon.Dealing" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Сделки</h2>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="Собственник:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="600px" DataSourceID="SqlDataSource2" DataTextField="fio" DataValueField="id"></asp:DropDownList><br />
    <asp:Label ID="Label8" runat="server" Text="Покупатель:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Width="600px" DataSourceID="SqlDataSource2" DataTextField="fio" DataValueField="id"></asp:DropDownList><br />
    <asp:Label ID="Label9" runat="server" Text="Риелтор:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" Width="600px" DataSourceID="SqlDataSource3" DataTextField="fio" DataValueField="id"></asp:DropDownList><br />
    <asp:Label ID="Label10" runat="server" Text="Объект:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList4" runat="server" Width="700px" DataSourceID="SqlDataSource1" DataTextField="address" DataValueField="id"></asp:DropDownList><br />
    <asp:Label ID="Label4" runat="server" Text="Цена объекта:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="*число"></asp:Label><br/>
    <asp:Label ID="Label2" runat="server" Text="Риелторская наценка:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="*% от продаж, число"></asp:Label><br/>
    <asp:Label ID="Label5" runat="server" Text="Итоговая стоимость:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" Width="300px" Enabled="False"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="*число"></asp:Label>
    <asp:Button ID="Button2" runat="server" Text="Расчитать" />
    <br />
    <asp:Label ID="Label12" runat="server" Text="Дата сделки:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" Width="300px" TextMode="Date"></asp:TextBox>
    <br />
    <asp:Label ID="Label11" runat="server" Text="Докумены:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" Width="448px" />
    <br/>
    <p><asp:Button ID="Button1" runat="server" Text="Добавить новую сделку" OnClick="Button1_Click" Enabled="False" /></p>
    <h5>Список сделок</h5><asp:Button ID="Button3" runat="server" Text="Обновить" />
        
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource5" AllowSorting="True" AutoGenerateColumns="False" Width="1300px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" SortExpression="id" />
            <asp:BoundField DataField="Z1.fio" HeaderText="Собственник" SortExpression="Z1.fio" />
            <asp:BoundField DataField="dealingZ.user.fio" HeaderText="Покупатель" SortExpression="dealingZ.user.fio" />
            <asp:BoundField DataField="realtor.fio" HeaderText="Риелтор" SortExpression="realtor.fio" />
            <asp:BoundField DataField="address" HeaderText="Адрес" SortExpression="address" />
            <asp:BoundField DataField="price" HeaderText="Цена" SortExpression="price" />
            <asp:BoundField DataField="expenses" HeaderText="Наценка" SortExpression="expenses" />
            <asp:BoundField DataField="cost" HeaderText="Стоимость" SortExpression="cost" />
            <asp:BoundField DataField="date" HeaderText="Дата сделки" SortExpression="date" />
        </Columns>
    </asp:GridView>
    <h5>Изменение даты и цены сделки</h5>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource4" AllowSorting="True" AutoGenerateColumns="False" Width="1300px" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="owner" HeaderText="Собственник" SortExpression="owner" />
            <asp:BoundField DataField="buyer" HeaderText="Покупатель" SortExpression="buyer" />
            <asp:BoundField DataField="realtor" HeaderText="Риелтор" SortExpression="realtor" />
            <asp:BoundField DataField="building" HeaderText="Адрес" SortExpression="building" />
            <asp:BoundField DataField="price" HeaderText="Цена" SortExpression="price" />
            <asp:BoundField DataField="expenses" HeaderText="Наценка" SortExpression="expenses" />
            <asp:BoundField DataField="cost" HeaderText="Стоимость" SortExpression="cost" />
            <asp:BoundField DataField="date" HeaderText="Дата" SortExpression="date" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:User %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:User.ProviderName %>" SelectCommand="SELECT * FROM [building]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [building] WHERE [id] = ? AND (([address] = ?) OR ([address] IS NULL AND ? IS NULL)) AND (([owner] = ?) OR ([owner] IS NULL AND ? IS NULL)) AND (([region] = ?) OR ([region] IS NULL AND ? IS NULL)) AND (([objecttype] = ?) OR ([objecttype] IS NULL AND ? IS NULL)) AND (([compactness] = ?) OR ([compactness] IS NULL AND ? IS NULL)) AND (([square] = ?) OR ([square] IS NULL AND ? IS NULL)) AND (([floor] = ?) OR ([floor] IS NULL AND ? IS NULL)) AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL)) AND [status] = ? AND (([description] = ?) OR ([description] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [building] ([id], [address], [owner], [region], [objecttype], [compactness], [square], [floor], [price], [status], [description]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [building] SET [address] = ?, [owner] = ?, [region] = ?, [objecttype] = ?, [compactness] = ?, [square] = ?, [floor] = ?, [price] = ?, [status] = ?, [description] = ? WHERE [id] = ? AND (([address] = ?) OR ([address] IS NULL AND ? IS NULL)) AND (([owner] = ?) OR ([owner] IS NULL AND ? IS NULL)) AND (([region] = ?) OR ([region] IS NULL AND ? IS NULL)) AND (([objecttype] = ?) OR ([objecttype] IS NULL AND ? IS NULL)) AND (([compactness] = ?) OR ([compactness] IS NULL AND ? IS NULL)) AND (([square] = ?) OR ([square] IS NULL AND ? IS NULL)) AND (([floor] = ?) OR ([floor] IS NULL AND ? IS NULL)) AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL)) AND [status] = ? AND (([description] = ?) OR ([description] IS NULL AND ? IS NULL))">
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:User %>" DeleteCommand="DELETE FROM [user] WHERE [id] = ? AND (([fio] = ?) OR ([fio] IS NULL AND ? IS NULL)) AND (([passport] = ?) OR ([passport] IS NULL AND ? IS NULL)) AND (([phone] = ?) OR ([phone] IS NULL AND ? IS NULL)) AND (([birthdate] = ?) OR ([birthdate] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [user] ([id], [fio], [passport], [phone], [birthdate]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:User.ProviderName %>" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [fio] = ?, [passport] = ?, [phone] = ?, [birthdate] = ? WHERE [id] = ? AND (([fio] = ?) OR ([fio] IS NULL AND ? IS NULL)) AND (([passport] = ?) OR ([passport] IS NULL AND ? IS NULL)) AND (([phone] = ?) OR ([phone] IS NULL AND ? IS NULL)) AND (([birthdate] = ?) OR ([birthdate] IS NULL AND ? IS NULL))">
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:User %>" ProviderName="<%$ ConnectionStrings:User.ProviderName %>" SelectCommand="SELECT * FROM [realtor]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [realtor] WHERE [id] = ? AND (([fio] = ?) OR ([fio] IS NULL AND ? IS NULL)) AND (([phone] = ?) OR ([phone] IS NULL AND ? IS NULL)) AND (([dateemployment] = ?) OR ([dateemployment] IS NULL AND ? IS NULL)) AND (([datedismissal] = ?) OR ([datedismissal] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [realtor] ([id], [fio], [phone], [dateemployment], [datedismissal]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [realtor] SET [fio] = ?, [phone] = ?, [dateemployment] = ?, [datedismissal] = ? WHERE [id] = ? AND (([fio] = ?) OR ([fio] IS NULL AND ? IS NULL)) AND (([phone] = ?) OR ([phone] IS NULL AND ? IS NULL)) AND (([dateemployment] = ?) OR ([dateemployment] IS NULL AND ? IS NULL)) AND (([datedismissal] = ?) OR ([datedismissal] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_fio" Type="String" />
            <asp:Parameter Name="original_fio" Type="String" />
            <asp:Parameter Name="original_phone" Type="String" />
            <asp:Parameter Name="original_phone" Type="String" />
            <asp:Parameter Name="original_dateemployment" Type="DateTime" />
            <asp:Parameter Name="original_dateemployment" Type="DateTime" />
            <asp:Parameter Name="original_datedismissal" Type="DateTime" />
            <asp:Parameter Name="original_datedismissal" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="fio" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="dateemployment" Type="DateTime" />
            <asp:Parameter Name="datedismissal" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fio" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="dateemployment" Type="DateTime" />
            <asp:Parameter Name="datedismissal" Type="DateTime" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_fio" Type="String" />
            <asp:Parameter Name="original_fio" Type="String" />
            <asp:Parameter Name="original_phone" Type="String" />
            <asp:Parameter Name="original_phone" Type="String" />
            <asp:Parameter Name="original_dateemployment" Type="DateTime" />
            <asp:Parameter Name="original_dateemployment" Type="DateTime" />
            <asp:Parameter Name="original_datedismissal" Type="DateTime" />
            <asp:Parameter Name="original_datedismissal" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:User %>" ProviderName="<%$ ConnectionStrings:User.ProviderName %>" SelectCommand="SELECT * FROM [dealing]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [dealing] WHERE [id] = ? AND (([owner] = ?) OR ([owner] IS NULL AND ? IS NULL)) AND (([buyer] = ?) OR ([buyer] IS NULL AND ? IS NULL)) AND (([realtor] = ?) OR ([realtor] IS NULL AND ? IS NULL)) AND (([building] = ?) OR ([building] IS NULL AND ? IS NULL)) AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL)) AND (([expenses] = ?) OR ([expenses] IS NULL AND ? IS NULL)) AND (([cost] = ?) OR ([cost] IS NULL AND ? IS NULL)) AND (([date] = ?) OR ([date] IS NULL AND ? IS NULL)) AND (([documents] = ?) OR ([documents] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [dealing] ([id], [owner], [buyer], [realtor], [building], [price], [expenses], [cost], [date], [documents]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [dealing] SET [owner] = ?, [buyer] = ?, [realtor] = ?, [building] = ?, [price] = ?, [expenses] = ?, [cost] = ?, [date] = ?, [documents] = ? WHERE [id] = ? AND (([owner] = ?) OR ([owner] IS NULL AND ? IS NULL)) AND (([buyer] = ?) OR ([buyer] IS NULL AND ? IS NULL)) AND (([realtor] = ?) OR ([realtor] IS NULL AND ? IS NULL)) AND (([building] = ?) OR ([building] IS NULL AND ? IS NULL)) AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL)) AND (([expenses] = ?) OR ([expenses] IS NULL AND ? IS NULL)) AND (([cost] = ?) OR ([cost] IS NULL AND ? IS NULL)) AND (([date] = ?) OR ([date] IS NULL AND ? IS NULL)) AND (([documents] = ?) OR ([documents] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_owner" Type="Int32" />
            <asp:Parameter Name="original_owner" Type="Int32" />
            <asp:Parameter Name="original_buyer" Type="Int32" />
            <asp:Parameter Name="original_buyer" Type="Int32" />
            <asp:Parameter Name="original_realtor" Type="Int32" />
            <asp:Parameter Name="original_realtor" Type="Int32" />
            <asp:Parameter Name="original_building" Type="Int32" />
            <asp:Parameter Name="original_building" Type="Int32" />
            <asp:Parameter Name="original_price" Type="Int32" />
            <asp:Parameter Name="original_price" Type="Int32" />
            <asp:Parameter Name="original_expenses" Type="Int32" />
            <asp:Parameter Name="original_expenses" Type="Int32" />
            <asp:Parameter Name="original_cost" Type="Int32" />
            <asp:Parameter Name="original_cost" Type="Int32" />
            <asp:Parameter Name="original_date" Type="DateTime" />
            <asp:Parameter Name="original_date" Type="DateTime" />
            <asp:Parameter Name="original_documents" Type="Object" />
            <asp:Parameter Name="original_documents" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="owner" Type="Int32" />
            <asp:Parameter Name="buyer" Type="Int32" />
            <asp:Parameter Name="realtor" Type="Int32" />
            <asp:Parameter Name="building" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="expenses" Type="Int32" />
            <asp:Parameter Name="cost" Type="Int32" />
            <asp:Parameter Name="date" Type="DateTime" />
            <asp:Parameter Name="documents" Type="Object" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="owner" Type="Int32" />
            <asp:Parameter Name="buyer" Type="Int32" />
            <asp:Parameter Name="realtor" Type="Int32" />
            <asp:Parameter Name="building" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="expenses" Type="Int32" />
            <asp:Parameter Name="cost" Type="Int32" />
            <asp:Parameter Name="date" Type="DateTime" />
            <asp:Parameter Name="documents" Type="Object" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_owner" Type="Int32" />
            <asp:Parameter Name="original_owner" Type="Int32" />
            <asp:Parameter Name="original_buyer" Type="Int32" />
            <asp:Parameter Name="original_buyer" Type="Int32" />
            <asp:Parameter Name="original_realtor" Type="Int32" />
            <asp:Parameter Name="original_realtor" Type="Int32" />
            <asp:Parameter Name="original_building" Type="Int32" />
            <asp:Parameter Name="original_building" Type="Int32" />
            <asp:Parameter Name="original_price" Type="Int32" />
            <asp:Parameter Name="original_price" Type="Int32" />
            <asp:Parameter Name="original_expenses" Type="Int32" />
            <asp:Parameter Name="original_expenses" Type="Int32" />
            <asp:Parameter Name="original_cost" Type="Int32" />
            <asp:Parameter Name="original_cost" Type="Int32" />
            <asp:Parameter Name="original_date" Type="DateTime" />
            <asp:Parameter Name="original_date" Type="DateTime" />
            <asp:Parameter Name="original_documents" Type="Object" />
            <asp:Parameter Name="original_documents" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:User %>" ProviderName="<%$ ConnectionStrings:User.ProviderName %>" SelectCommand="SELECT * FROM [dealingZ]"></asp:SqlDataSource>
</asp:Content>
