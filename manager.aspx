<%@ Page Title="" Language="C#" MasterPageFile="Site1.Master" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="f23store.manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
            </ItemTemplate>
             <FooterTemplate>
                 <asp:LinkButton runat="server" OnClick="Insert_Click">Insert</asp:LinkButton>
                           </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="name" SortExpression="name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox runat="server" ID="name"></asp:TextBox>
                </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="price" SortExpression="price">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("price") %>'></asp:Label>
            </ItemTemplate>
             <FooterTemplate>
                        <asp:TextBox ID="price" runat="server"></asp:TextBox>
                    </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="desc" SortExpression="desc">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("desc") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("desc") %>'></asp:Label>
            </ItemTemplate>
             <FooterTemplate>
                        <asp:TextBox ID="desc" runat="server"></asp:TextBox>
                    </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="image" SortExpression="image">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("image") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                        <asp:FileUpload ID="image" runat="server" />
                    </FooterTemplate>
        </asp:TemplateField>
        <asp:ImageField DataImageUrlField="image" HeaderText="Photo" ControlStyle-Height="100" ControlStyle-Width="100">
        </asp:ImageField>
    </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [products] ([name], [price], [desc], [image]) VALUES (@name, @price, @desc, @image)" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [name] = @name, [price] = @price, [desc] = @desc, [image] = @image WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="price" Type="Int32" />
        <asp:Parameter Name="desc" Type="String" />
        <asp:Parameter Name="image" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="price" Type="Int32" />
        <asp:Parameter Name="desc" Type="String" />
        <asp:Parameter Name="image" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
