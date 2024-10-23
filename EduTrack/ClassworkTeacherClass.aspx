<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPanel.Master" AutoEventWireup="true" CodeBehind="ClassworkTeacherClass.aspx.cs" Inherits="EduTrack.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
                    <br />
                    Class Code: <div>code12</div>
                </div>
                <div class="col-sm">
                    <asp:Button 
                         ID="createAssignmentButton" 
                         runat="server" 
                         CssClass="custom-button" 
                         Text="+ Create Assignment"
                         OnClick="createAssignment_Click"
                         />
                </div>
            </div>
        </div>
        <hr />

        <h2>Classwork</h2>
        <div class="feature-card p-3">
            <div class="flex-container">
                <h3>Experiment Name</h3>
                <asp:Button 
                    ID="viewMore" 
                    runat="server" 
                    CssClass="view-more-button" 
                    Text="View More" 
                    OnClick="viewClasswork_Click"
                    />
            </div>
        </div>
    </div>
</asp:Content>
