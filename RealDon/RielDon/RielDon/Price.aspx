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
                <asp:TextBox ID="TextBox1" runat="server" Enabled="True" Width="100" Text="от"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox6" runat="server" Enabled="True" Width="100" Text="до"></asp:TextBox>
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
        </asp:TableRow>
    </asp:Table>
    </br>
    <asp:Button ID="Button1" runat="server" Text="Поиск" Width="200" OnClick="Button1_Click1" /><asp:Button ID="Button2" runat="server" Text="Сбросить" Width="200" OnClick="Button2_Click" />
    <p>Результаты поиска...</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" Width="1200px" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" SortExpression="id" ReadOnly="True" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="owner" HeaderText="owner" SortExpression="owner" />
            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
            <asp:BoundField DataField="objecttype" HeaderText="objecttype" SortExpression="objecttype" />
            <asp:BoundField DataField="compactness" HeaderText="compactness" SortExpression="compactness" />
            <asp:BoundField DataField="square" HeaderText="square" SortExpression="square" />
            <asp:BoundField DataField="floor" HeaderText="floor" SortExpression="floor" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
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
</asp:Content>
