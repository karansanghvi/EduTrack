<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="EduTrack.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .view-more-button {
            background-color: white;
            color: black;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
        <div class="p-5">
            <h1>Admin Page</h1>
            <div class="container centered-content">
    <div class="row gap-5">
        <div class="col-sm feature-card p-5">
            <h2 class="text-center fw-bold" style="color: black;">Edit Teacher Account</h2>
            <br />
            <div class="flex-container">
                <asp:Button 
                    ID="editTeacher" 
                    runat="server" 
                    Text="Edit" 
                    CssClass="view-more-button mx-auto d-block" 
                    onClick="editTeacher_Click"
                    />
            </div>
        </div>
        <div class="col-sm feature-card p-5">
            <h2 class="text-center fw-bold" style="color: black;">Edit Student Account</h2>
            <br />
            <div class="flex-container">
                <asp:Button 
                    ID="editStudent" 
                    runat="server" 
                    Text="Edit" 
                    CssClass="view-more-button mx-auto d-block" 
                    onClick="editStudent_Click"
                    />
            </div>
        </div>
    </div>
        </div>
    </div>
</asp:Content>
