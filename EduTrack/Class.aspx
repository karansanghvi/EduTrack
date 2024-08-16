<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Class.aspx.cs" Inherits="EduTrack.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .class-name-card {
            border: 1px solid #ccc;
            border-radius: 20px;
        }

        .view-more-button {
            background-color: black;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <h1>Class Name</h1>
        <hr />
    </div>

    <div class="container">
        <div class="row gap-5">
            <div class="col-sm p-3 class-name-card">
                <h3>Upcoming Assignments</h3>
                <p class="description">No Work Due!</p>
            </div>
            <div class="col-sm p-3 class-name-card">
                <h3>Announcements</h3>
                <p class="description">Class cancelled on 12th August</p>
            </div>
        </div>
    </div>

    <br />

    <div class="container">
        <div class="row gap-5">
            <div class="col-sm feature-card p-4">
                <h2 class="text-center fw-bold pt-2" style="color: black;">Experiment 1</h2> 
                <br />
                <asp:Button 
                    ID="viewButton1" 
                    runat="server" 
                    Text="View Assignment" 
                    CssClass="view-more-button mx-auto d-block" 
                    OnClick="viewAssignment_Click"
                    />
            </div>
            <div class="col-sm feature-card p-4">
                <h2 class="text-center fw-bold pt-2" style="color: black;">Experiment 2</h2>
                <br />
                <asp:Button
                    ID="viewButton2"
                    runat="server"
                    Text="View Assignment"
                    CssClass="view-more-button mx-auto d-block"
                    OnClick="viewAssignment_Click"
                    />
            </div>
            <div class="col-sm feature-card p-4">
                <h2 class="text-center fw-bold pt-2" style="color: black;">Experiment 3</h2>
                <br />
                <asp:Button 
                    ID="viewButton3"
                    runat="server"
                    Text="View Assignment"
                    CssClass="view-more-button mx-auto d-block"
                    OnClick="viewAssignment_Click"
                    />
            </div>
        </div>
    </div>
</asp:Content>
