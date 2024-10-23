<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="Assignment.aspx.cs" Inherits="EduTrack.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .flex-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .assignment-card {
            border: 1px solid #ccc;
            border-radius: 20px;
        }

        .work-card {
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .custom-textbox {
            width: 100%;
            padding: 15px;
            border-radius: 20px;
            border: 0px solid #ccc;
            font-size: 16px;
            margin-top: 10px;
            background-color: #D9D9D9;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <p class="description" id="P_CourseName" runat="server">Course Name</p>
        <h1 id="h1_ExperimentName" runat="server">Experiment Name</h1>
        <div class="flex-container">
            <p class="description" id="P_TotalMarks" runat="server">25 points</p>
            <p class="description"id="P_Due" runat="server">Due 11th August</p>
        </div>
        <hr />

        <div class="container">
            <div class="row gap-5">
                <div class="col-sm p-3 assignment-card">
                    <h3>Experiment Description</h3>
                    <p class="description" id="ExpDesc" runat="server"></p>
                </div>
                <div class="col-sm">
                    <div class="p-3 work-card">
                        <h3>Your Work</h3>
                        <div style="border: 1px solid #ccc; border-radius: 10px;" class="p-3">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Google Drive Link" class="custom-textbox" ></asp:TextBox>
                        </div>
                        <br />
                        <asp:Button ID="upload" runat="server" Text="Upload File" CssClass="custom-button" />
                    </div>
                    <br />
                    <div class="p-3 work-card">
                        <h3>Your Grade</h3>
                        <div style="border: 1px solid #ccc; border-radius: 10px;" class="p-3">
                            <p class="description" runat="server" id="P_Score">25/25</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
