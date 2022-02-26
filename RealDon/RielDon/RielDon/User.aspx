<%@ Page Title="О нас" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="User.aspx.cs" Inherits="RielDon.User" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Новый клиент</h2>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="ФИО:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="*Иванов Иван Иванович"></asp:Label><br/>
    <asp:Label ID="Label2" runat="server" Text="Паспортные данные:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="*Серия и номер без пробелов"></asp:Label><br/>
    <asp:Label ID="Label4" runat="server" Text="Номер телефона:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="*+7(999)999-99-99"></asp:Label><br/>
    <asp:Label ID="Label5" runat="server" Text="Дата рождения:&nbsp;&nbsp;" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" Width="300px" TextMode="Date"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="*01.01.2000"></asp:Label><br/>
    <p><asp:Button ID="Button1" runat="server" Text="Добавить нового пользователя" OnClick="Button1_Click" /></p>
    <h5>Список клиентов</h5>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
</asp:Content>
