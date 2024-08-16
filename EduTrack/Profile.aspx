<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="EduTrack.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <h1 style="font-size: 60px;">Profile</h1>
        <hr />
        <div class="container pt-5">
            <div class="row">
                <div class="col-sm">
                    <div class="row">
                        <div class="col-sm">
                            <asp:Label ID="firstNameLabel" runat="server" Text="First Name:"></asp:Label>
                            <br />
                            <asp:TextBox ID="firstName" runat="server" placeholder="Name" CssClass="custom-textbox"></asp:TextBox>
                        </div>
                        <div class="col-sm">
                            <asp:Label ID="lastNameLabel" runat="server" Text="Last Name:"></asp:Label>
                            <br />
                            <asp:TextBox ID="lastName" runat="server" placeholder="Surname" CssClass="custom-textbox"></asp:TextBox>
                        </div>
                    </div>
                    <div class="pt-4">
                        <asp:Label ID="emailAddressLabel" runat="server" Text="Email Address:"></asp:Label>
                        <br />
                        <asp:TextBox ID="emailAddress" runat="server" placeholder="Email" CssClass="custom-textbox"></asp:TextBox>
                    </div>
                    <div class="pt-4">
                        <asp:Label ID="passwordLabel" runat="server" Text="Password:"></asp:Label>
                        <br />
                        <asp:TextBox ID="password" runat="server" placeholder="Password" CssClass="custom-textbox"></asp:TextBox>
                    </div>
                    <div class="pt-4">
                        <asp:Button ID="signupButton" runat="server" CssClass="custom-button" Text="Edit Profile" />
                    </div>
                </div>
               
                <div class="col-sm ps-5">
                    <h3>Completed Assignments:</h3>
                    <div class="feature-card p-3">
                        <p style="color: white;">Course Name</p>
                        <h3 style="color: black;">Experiment Name</h3>
                        <p style="color: #D9D9D9;">Grade: 25/25</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
