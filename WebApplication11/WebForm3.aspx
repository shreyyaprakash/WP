<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication11.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <br />
    <br />
    
    <asp:Label ID="Label1" runat="server" Text="Choose doctor"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Text="Please Select" Value=""></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Choose slot" OnClick="Button1_Click" CausesValidation="false"/> &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" Visible="false">
        <asp:ListItem Text="Please Select" Value=""></asp:ListItem>
    </asp:DropDownList>
    
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    <br />
    <div id="lo">
    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click"/>
    </div>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        
    <br />
    <br />
		
	<!-- Footer -->

	<footer id="footer">
		<i class="icon fab fa-twitter fab-last"></i>
		<i class="icon fab fa-facebook-f fab-last"></i>
		<i class="icon fab fa-instagram fab-last"></i>
		<i class="icon fas fa-envelope fab-last"></i>

		<p>© Copyright HMS Hopital</p>

	</footer>
</asp:Content>
