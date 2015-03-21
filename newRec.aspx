<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newRec.aspx.vb" Inherits="newRec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <div id="topOfPage">
    <h1>
    Wicked Easy Recipes
</h1>
<h2>
    Using 5 Ingredients or Less!
</h2>


   
    <div id="Navs">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>&nbsp;| <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/newRec.aspx">New Recipe</asp:HyperLink>&nbsp;| <asp:HyperLink ID="HyperLink3" runat="server">About Us</asp:HyperLink>&nbsp;| <asp:HyperLink ID="HyperLink4" runat="server">Contact</asp:HyperLink>
    </div>
    </div>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ljohnsonHW %>" DeleteCommand="DELETE FROM [ljohnsonHW] WHERE [recID] = @recID" InsertCommand="INSERT INTO [ljohnsonHW] ([recName], [author], [ing1], [ing2], [ing3], [ing4], [ing5], [prep], [notes]) VALUES (@recName, @author, @ing1, @ing2, @ing3, @ing4, @ing5, @prep, @notes)" SelectCommand="SELECT * FROM [ljohnsonHW]" UpdateCommand="UPDATE [ljohnsonHW] SET [recName] = @recName, [author] = @author, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [prep] = @prep, [notes] = @notes WHERE [recID] = @recID">
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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="recName" HeaderText="Recipe Name" SortExpression="recName" />
                <asp:BoundField DataField="author" HeaderText="Submitted By" SortExpression="author" />
                <asp:BoundField DataField="ing1" HeaderText="Ingredient #1" SortExpression="ing1" />
                <asp:BoundField DataField="ing2" HeaderText="Ingredient #2" SortExpression="ing2" />
                <asp:BoundField DataField="ing3" HeaderText="Ingredient #3" SortExpression="ing3" />
                <asp:BoundField DataField="ing4" HeaderText="Ingredient #4" SortExpression="ing4" />
                <asp:BoundField DataField="ing5" HeaderText="Ingredient #5" SortExpression="ing5" />
                <asp:BoundField DataField="prep" HeaderText="Preparation" SortExpression="prep" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
