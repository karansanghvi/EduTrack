<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EduTrack.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <div class="container">
            <div class="row">
                <div class="col-sm" style="padding-top: 140px;">
                    <h1 style="font-size: 60px;">Empower Your</h1>
                    <h1 style="font-size: 50px;">Learning Journey</h1>
                    <p>Where Students and Teachers Connect </p>
                    <a href="Classes.aspx" class="btn btn-primary">Go To Classes</a>
                </div>
                <div class="col-sm pt-5">
                    <asp:Image 
                        ID="heroBanner" 
                        runat="server" 
                        ImageUrl="/src/images/hero_banner.png" 
                        AlternateText="Hero Banner" 
                        width="550px"
                        height="350px"
                        />
                </div>
            </div>
        </div>
    </div>
    <div class="pt-5">
    <h1 class="text-center" style="font-size: 50px;">Our Features</h1>
    <div class="container centered-content">
        <div class="row gap-5">
            <div class="col-sm feature-card">
                <h2 class="text-center fw-bold pt-2" style="color: black;">Assignments</h2>
                <p class="text-center">Upload your assignments according to the deadlines</p>
            </div>
            <div class="col-sm feature-card">
                <h2 class="text-center fw-bold pt-2" style="color: black;">Grades</h2>
                <p class="text-center">View your grades according to your submissions</p>
            </div>
        </div>

        <div class="row gap-5 pt-5">
            <div class="col-sm feature-card ps-3">
                <h2 class="text-center fw-bold pt-2" style="color: black;">Profile</h2>
                <p class="text-center">Check your profile for completed assignments</p>
            </div>
            <div class="col-sm feature-card pe-5">
                <h2 class="text-center fw-bold pt-2" style="color: black;">Announcements</h2>
                <p class="text-center">View upcoming assignments and important notices</p>
            </div>
        </div>
    </div>
</div>

</asp:Content>
