<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication11.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div id="lo">
    <asp:Label ID="Label1" runat="server" Text="Choose Speciality"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Text="Please select" Value=""></asp:ListItem>
        <asp:ListItem Text="Dentist" Value="Dentist"></asp:ListItem>
        <asp:ListItem Text="Gynecologist" Value="Gynecologist"></asp:ListItem>
        <asp:ListItem Text="ENT" Value="ENT"></asp:ListItem>
        <asp:ListItem Text="Dermatologist" Value="Dermatologist"></asp:ListItem>
       
    </asp:DropDownList>
   <br />
    <asp:Button ID="sub" runat="server" Text="Submit" OnClick="sub_Click" />
    <br />
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    
        </div>
    
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
