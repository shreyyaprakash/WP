<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication11.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="imgcontainer">
    <img src="Avatar.png" alt="Avatar" class="avatar">
  </div>

  
      <div>
    &nbsp;<label ID="lo"><b>Enter Email Id:&nbsp;&nbsp; </b></label>
    
    <asp:TextBox ID="id" runat="server" Width="822px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email cannot be null or empty" ControlToValidate="id"></asp:RequiredFieldValidator>
          </div>
    <div>
    <label id="lo"><b>Enter Password:</b></label>
    
      <asp:TextBox ID="pass" runat="server" Width="823px" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password cannot be null or empty" ControlToValidate="pass"></asp:RequiredFieldValidator>
        </div>
    <div class="container" style="background-color:#f1f1f1">
      <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
      <span class="psw"><asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" causesvalidation="false" /></span>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <asp:Button ID="cancel" runat="server" Text="Cancel" OnClick="cancel_Click" causesvalidation="false"/>
    <span class="psw"><a href="#">Forget password</a></span>
  </div>
    

	<footer id="footer">
		<i class="icon fab fa-twitter fab-last"></i>
		<i class="icon fab fa-facebook-f fab-last"></i>
		<i class="icon fab fa-instagram fab-last"></i>
		<i class="icon fas fa-envelope fab-last"></i>

		<p>© Copyright HMS Hopital</p>

	</footer>





</asp:Content>
