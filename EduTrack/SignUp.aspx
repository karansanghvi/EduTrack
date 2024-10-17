<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EduTrack.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container pt-5">
            <div class="row">
                <div class="col-sm pt-5">
                    <asp:Image 
                        ID="heroBanner" 
                        runat="server" 
                        ImageUrl="/src/images/signup_image.png" 
                        AlternateText="Hero Banner" 
                        width="450px"
                        height="500px"
                        />
                </div>
                <div class="col-sm login-div p-4" style="box-shadow: 20px;">
                    <h1 class="text-center">Create Account</h1>
                        <div class="row pt-4">
                            <div class="col-sm">
                                <asp:Label ID="NameLabel" runat="server" Text="Enter Name:"></asp:Label>
                                <br />
                                <asp:TextBox ID="firstName" runat="server" placeholder="Name" CssClass="custom-textbox"></asp:TextBox>
                            </div>
                            <div class="col-sm">
                                <asp:Label ID="idLabel" runat="server" Text="Enter ID Number:"></asp:Label>
                                <br />
                                <asp:TextBox ID="lastName" runat="server" placeholder="Surname" CssClass="custom-textbox"></asp:TextBox>
                            </div>
                        </div>
                        <div class="pt-4">
                            <asp:Label ID="emailAddressLabel" runat="server" Text="Enter Email Address:"></asp:Label>
                            <br />
                            <asp:TextBox ID="emailAddress" runat="server" placeholder="Email Address" CssClass="custom-textbox"></asp:TextBox>
                        </div>
                        <div class="pt-4">
                            <asp:Label ID="passwordLabel" runat="server" Text="Enter Password:"></asp:Label>
                            <br />
                            <asp:TextBox ID="password" runat="server" placeholder="Password" CssClass="custom-textbox"></asp:TextBox>
                        </div>
                    <div class="pt-4" runat="server" id="AdminDiv">
                        <asp:Label ID="AdminLabel" runat="server" Text="Has Admin Access:"></asp:Label>
                        <br />
                        <asp:CheckBox ID="AdminBox" runat="server" />
                    </div>
                    <div class="pt-4">
                        <asp:Button ID="signupButton" runat="server" CssClass="custom-button" Text="Signup" />
                    </div>
                    <p class="text-center pt-5">Already have an account? <a href="StudentLogin.aspx">Login</a></p>
                </div>
            </div>
    </div>
</asp:Content>
