﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication11.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label4" runat="server" Text="Registered Email"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

    <br />
    <asp:Label ID="Label1" runat="server" Text="Choose Speciality"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Text="Please select" Value=""></asp:ListItem>
        <asp:ListItem Text="Dentist" Value="Dentist"></asp:ListItem>
        <asp:ListItem Text="Gynecologist" Value="Gynecologist"></asp:ListItem>
        <asp:ListItem Text="ENT" Value="ENT"></asp:ListItem>
        <asp:ListItem Text="Dermatologist" Value="Dermatologist"></asp:ListItem>
       
    </asp:DropDownList>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Choose doctor" OnClick="Button1_Click" CausesValidation="false" />
    <asp:DropDownList ID="DropDownList2" runat="server" Visible="false" ></asp:DropDownList>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Experience"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem Text="Positive" Value="Positive"></asp:ListItem>
        <asp:ListItem Text="Negative" Value="Negative"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Review :"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="86px" Width="334px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Review cannot be null or empty" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    <br />
    
    <asp:Button ID="submit" runat="server" Text="submit" OnClick="submit_Click" /><br /><asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        
	<!-- Footer -->

	<footer id="footer">
		<i class="icon fab fa-twitter fab-last"></i>
		<i class="icon fab fa-facebook-f fab-last"></i>
		<i class="icon fab fa-instagram fab-last"></i>
		<i class="icon fas fa-envelope fab-last"></i>

		<p>© Copyright HMS Hopital</p>

	</footer>
</asp:Content>
