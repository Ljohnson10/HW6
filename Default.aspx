<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="thin">
<div class="topOfPage">
<h1>
    Wicked Easy Recipes
</h1>
<h2>
    Using 5 Ingredients or Less!
</h2>

 <div class="Navs">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>&nbsp;| <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/newRec.aspx">New Recipe</asp:HyperLink>&nbsp;| <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/aboutUs.aspx">About Us</asp:HyperLink>&nbsp;| <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink>
    </div>
 </div>   
    
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="Sql_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:ljohnsonHW %>" SelectCommand="SELECT * FROM [ljohnsonHW]" DeleteCommand="DELETE FROM [ljohnsonHW] WHERE [recID] = @recID" InsertCommand="INSERT INTO [ljohnsonHW] ([recName], [author], [ing1], [ing2], [ing3], [ing4], [ing5], [prep], [notes]) VALUES (@recName, @author, @ing1, @ing2, @ing3, @ing4, @ing5, @prep, @notes)" UpdateCommand="UPDATE [ljohnsonHW] SET [recName] = @recName, [author] = @author, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [prep] = @prep, [notes] = @notes WHERE [recID] = @recID">
        <DeleteParameters>
            <asp:Parameter Name="recID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="recName" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="ing1" Type="String" />
            <asp:Parameter Name="ing2" Type="String" />
            <asp:Parameter Name="ing3" Type="String" />
            <asp:Parameter Name="ing4" Type="String" />
            <asp:Parameter Name="ing5" Type="String" />
            <asp:Parameter Name="prep" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="recName" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="ing1" Type="String" />
            <asp:Parameter Name="ing2" Type="String" />
            <asp:Parameter Name="ing3" Type="String" />
            <asp:Parameter Name="ing4" Type="String" />
            <asp:Parameter Name="ing5" Type="String" />
            <asp:Parameter Name="prep" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="recID" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="Sql_recipes" AutoGenerateColumns="False" AllowPaging="True" Height="92px" Width="520px">
        <Columns>
            <asp:BoundField DataField="recName" HeaderText="Recipe Name" SortExpression="recName" />
            <asp:BoundField DataField="author" HeaderText="Submitted By" SortExpression="author" />
            <asp:HyperLinkField DataNavigateUrlFields="recID" DataNavigateUrlFormatString="Details.aspx?recID={0}" HeaderText="Details" Text="Select" />
        </Columns>
    </asp:GridView>
    </form>
    <p class="legal">
        &copy; 2015. 6K:183 Software Design & Development 
    </p>
</div>
</body>
</html>
