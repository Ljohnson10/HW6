<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>&nbsp;| <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/newRec.aspx">New Recipe</asp:HyperLink>&nbsp;| <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/aboutUs.aspx">About Us</asp:HyperLink>&nbsp;| <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink>
    </div>
</div>
    <form id="form1" runat="server">
        <div>
            <br />
        
         <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" Height="16px" Width="285px"  ></asp:TextBox>
        <br />
        <br />
       
        

         Your message:<br /> 
        
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="50" TextMode="MultiLine"  ></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" CssClass="Buttons" />

        
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        
        <%End If%>
    </div>
        <p class="legal">
        &copy; 2015. 6K:183 Software Design & Development 
    </p>
    </form>
    </div>
</body>
</html>
