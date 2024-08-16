<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPanel.Master" AutoEventWireup="true" CodeBehind="StreamTeacherClass.aspx.cs" Inherits="EduTrack.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .class-code {
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        .class-container {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .nav-class {
            background-color: #D9D9D9;
            border: none;
            padding: 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: space-evenly;
        }

        .box {
            background-color: black;
            color: white;
            padding: 10px 20px;
        }

        .flex-container {
            display: flex;
            align-items: center;
            justify-content: space-between; 
        }

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
    <div class="p-5">
        <div class="container">
            <div class="row" style="gap: 500px;">
                <div class="col-sm">
                    <h1>Class Name</h1>
                </div>
                <div class="col-sm class-code p-3">
                    <h4>Class Code:</h4>
                    <p class="description">ghqnqET</p>
                </div>
            </div>
        </div>
        <hr />
        <div class="nav-class mb-4">
            <a class="nav-link active box" aria-current="page" href="StreamTeacherClass.aspx">Stream</a>
            <a class="nav-link active" aria-current="page" href="ClassworkTeacherClass.aspx">Classwork</a>
            <a class="nav-link active" aria-current="page" href="StudentsTeacherClass.aspx">Students</a>
        </div>
        <h2>Stream</h2>
        <div class="feature-card p-3">
            <div class="flex-container">
                <h3>Experiment Name</h3>
                <asp:Button 
                    ID="viewMore" 
                    runat="server" 
                    CssClass="view-more-button" 
                    Text="Remove" 
                    />
            </div>
        </div>
    </div>
</asp:Content>
