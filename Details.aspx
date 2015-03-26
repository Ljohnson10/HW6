<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe Details</title>
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
    <div>
    
        <asp:SqlDataSource ID="Sql_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:ljohnsonHW %>" DeleteCommand="DELETE FROM [ljohnsonHW] WHERE [recID] = @recID" InsertCommand="INSERT INTO [ljohnsonHW] ([recName], [author], [ing1], [ing2], [ing3], [ing4], [ing5], [prep], [notes]) VALUES (@recName, @author, @ing1, @ing2, @ing3, @ing4, @ing5, @prep, @notes)" SelectCommand="SELECT * FROM [ljohnsonHW] WHERE ([recID] = @recID)" UpdateCommand="UPDATE [ljohnsonHW] SET [recName] = @recName, [author] = @author, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [prep] = @prep, [notes] = @notes WHERE [recID] = @recID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recID" QueryStringField="recID" Type="Int32" />
            </SelectParameters>
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
    
        <asp:Label ID="lbl_deletedRec" runat="server"></asp:Label>
    
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recID" DataSourceID="Sql_recipes">
            <EditItemTemplate>
                <table>
                    <tr>
                        <td class="left">
                            Recipe Name

                        </td>
                        <td class="right">
                            <asp:TextBox ID="tbRecNameDet" runat="server" Text='<%# Bind("recName") %>' />

                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvRecNameDet" runat="server" ErrorMessage="Please enter a recipe name!" ControlToValidate="tbRecNameDet"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td class="left">
                            Submitted By
                        </td>
                        <td class="right">
                            <asp:TextBox ID="tbAuthorDet" runat="server" Text='<%# Bind("author") %>' />
                        </td>
                         <td>
                            <asp:RequiredFieldValidator ID="rfvAuthorDet" runat="server" ErrorMessage="Please enter an author name!" ControlToValidate="tbAuthorDet"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="left">
                            Ingredient #1
                        </td>
                        <td class="right">
                            <asp:TextBox ID="tbIng1Det" runat="server" Text='<%# Bind("ing1") %>' />
                        </td>
                         <td>
                            <asp:RequiredFieldValidator ID="rfvIng1Det" runat="server" ErrorMessage="Please enter an ingredient!" ControlToValidate="tbIng1Det"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td class="left">
                            Ingredient #2
                        </td>
                        <td class="right">
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ing2") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td class="left">
                            Ingredient #3
                        </td>
                        <td class="right">
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ing3") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td class="left">
                            Ingredient #4
                        </td>
                        <td class="right">
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ing4") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td class="left">
                            Ingredient #5
                        </td>
                        <td class="right">
                             <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ing5") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="left">
                            Preparation
                        </td>
                        <td class="right">
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("prep") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvPrepDet" runat="server" ErrorMessage="Please enter preparation instructions!" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="left">
                            Notes
                        </td>
                        <td class="right">
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>
                    
                </table>
                <div class="buttons">
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="Buttons" />
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="Buttons" />
                </div> 
                
                
            </EditItemTemplate>
            <InsertItemTemplate>
               
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td class="left">
                            Recipe Name

                        </td>
                        <td class="right">
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("recName") %>' />
                        </td>
                        

                    </tr>
                    <tr>
                        <td class="left">
                            Submitted By
                        </td>
                        <td class="right">
                             <asp:Label ID="Label2" runat="server" Text='<%# Bind("author") %>' />
                        </td>
                         
                    </tr>
                    <tr>
                        <td class="left">
                            Ingredient #1
                        </td>
                        <td class="right">
                             <asp:Label ID="Label3" runat="server" Text='<%# Bind("ing1") %>' />
                        </td>
                         
                    </tr>
                     <tr>
                        <td class="left">
                            Ingredient #2
                        </td>
                        <td class="right">
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ing2")%>' />
                        </td>
                    </tr>
                     <tr>
                        <td class="left">
                            Ingredient #3
                        </td>
                        <td class="right">
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("ing3")%>' />
                        </td>
                    </tr>
                     <tr>
                        <td class="left">
                            Ingredient #4
                        </td>
                        <td class="right">
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("ing4")%>' />
                        </td>
                    </tr>
                     <tr>
                        <td class="left">
                            Ingredient #5
                        </td>
                        <td class="right">
                             <asp:Label ID="Label7" runat="server" Text='<%# Bind("ing5")%>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="left">
                            Preparation
                        </td>
                        <td class="right">
                             <asp:Label ID="Label8" runat="server" Text='<%# Bind("prep") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="left">
                            Notes
                        </td>
                        <td class="right">
                           <asp:Label ID="Label9" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>
                    
                </table>
                
                
                
               
               
               <div class="buttons">
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="Buttons" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="Buttons" />
               </div>
            </ItemTemplate>
        </asp:FormView>
    
    </div>
        <p class="legal">
        &copy; 2015. 6K:183 Software Design & Development 
    </p>
    </form>
</div>
</body>
</html>
