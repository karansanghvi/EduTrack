<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="EduTrack.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <h1 style="font-size: 60px;">Profile</h1>
        <hr />
        <div class="container pt-5">
            <div class="row">
                <div class="col-sm">
                    
                    <div class="pt-4">
                        <asp:Label ID="firstNameLabel" runat="server" Text="Name:"></asp:Label>
                        <br />
                        <asp:TextBox ID="firstName" runat="server" Enabled="false" placeholder="Name" CssClass="custom-textbox"></asp:TextBox>
                    </div>
                    <div class="pt-4">
                        <asp:Label ID="emailAddressLabel" runat="server" Text="Email Address:"></asp:Label>
                        <br />
                        <asp:TextBox ID="emailAddress" Enabled="false" runat="server" placeholder="Email" CssClass="custom-textbox"></asp:TextBox>
                    </div>
                    <div class="pt-4">
                        <asp:Button ID="signupButton" runat="server" CssClass="custom-button" Text="Change Password" OnClick="signupButton_Click" />
                    </div>


                    <div class="pt-4" runat="server" id="Div_Pass1">
                        <asp:Label ID="passwordLabel" runat="server" Text="Current Password:"></asp:Label>
                        <br />
                        <asp:TextBox ID="password" runat="server" placeholder="Password" CssClass="custom-textbox"></asp:TextBox>
                    </div>
                    <div class="pt-4" runat="server" id="Div_Pass2"> 
                        <asp:Label ID="newPasswordLabel" runat="server" Text="New Password:"></asp:Label>
                        <br />
                        <asp:TextBox ID="newPassword" runat="server" placeholder="Password" CssClass="custom-textbox"></asp:TextBox>
                    </div>
                    <div class="pt-4" runat="server" id="Div_Pass3"> 
                        <asp:Button ID="ResetBtn" runat="server" CssClass="custom-button" Text="Change" OnClick="ResetBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
