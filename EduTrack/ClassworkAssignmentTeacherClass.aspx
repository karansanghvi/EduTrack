<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPanel.Master" AutoEventWireup="true" CodeBehind="ClassworkAssignmentTeacherClass.aspx.cs" Inherits="EduTrack.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .document-box {
            border: 1px solid #ccc;
            border-radius: 10px;
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

        .container-button {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px;
        }

        .cancel-button {
            background-color: black;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .create-button {
            background-color: #03A4D9;
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
        <h1>Experiment Name</h1>
        <hr />
        <div class="nav-class mb-4">
            <a class="nav-link active box" aria-current="page" href="ClassworkAssignmentTeacherClass.aspx">Assignment</a>
            <a class="nav-link" aria-current="page" href="ClassworkStudentsWorkTeacherClass.aspx">Student's Work</a>
        </div>
        <h2><a href="ClassworkTeacherClass.aspx" style="text-decoration: none; color: black;">Classwork ></a> Assignment</h2>
        <br />
            <div class="flex-container">
                <p class="description">25 points</p>
                <p class="description">Due 11th August</p>
            </div>
        <p>This is the description/instruction</p>
        <div class="document-box p-3">
            <p>The uploaded document will be seen here</p>
        </div>

         <div class="p-4 text-center">
             <asp:Button ID="Button1" runat="server" Text="Edit Assignment" CssClass="create-button" />
         </div>
    </div>
</asp:Content>
