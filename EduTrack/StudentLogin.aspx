<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="EduTrack.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-5">
        <div class="row">
            <div class="col-sm pt-5">
                <asp:Image 
                    ID="heroBanner" 
                    runat="server" 
                    ImageUrl="/src/images/login_image.png" 
                    AlternateText="Hero Banner" 
                    width="450px"
                    height="500px"
                    />
            </div>
            <div class="col-sm login-div p-4" style="box-shadow: 20px;">
                <h1 class="text-center">Welcome</h1>
                    <div class="pt-4">
                        <asp:Label ID="emailAddressLabel" runat="server" Text="Enter ID:"></asp:Label>
                        <br />
                        <asp:TextBox ID="email" runat="server" placeholder="Email" CssClass="custom-textbox"></asp:TextBox>
                    </div>
                    <div class="pt-4">
                        <asp:Label ID="passwordLabel" runat="server" Text="Enter Password:"></asp:Label>
                        <br />
                        <asp:TextBox ID="password" runat="server" placeholder="Password" CssClass="custom-textbox"></asp:TextBox>
                    </div>
                <p class="text-end pt-3">Forgot Password?</p>
                <asp:Button ID="loginButton" runat="server" CssClass="custom-button" Text="Login" OnClick="loginButton_Click" />
                <p class="text-center pt-5">Don't have an account? <a href="StudentSignup.aspx">Signup</a></p>
            </div>
        </div>
    </div>
</asp:Content>
