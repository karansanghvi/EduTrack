<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="StudentsTeacherClass.aspx.cs" Inherits="EduTrack.WebForm15" %>
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
         <h1>Class Name</h1>
         <hr />
         <div class="nav-class mb-4">
             <a class="nav-link" aria-current="page" href="ClassworkTeacherClass.aspx">Classwork</a>
             <a class="nav-link box" aria-current="page" href="StudentsTeacherClass.aspx">Students</a>
         </div>
         <h2>Students</h2>
         <p>Find the list of the students who have joined the class</p>
         <div class="feature-card p-3">
             <div class="flex-container">
                 <h3>Karan Sanghvi</h3>
                 <asp:Button 
                     ID="removeButton" 
                     runat="server" 
                     CssClass="view-more-button" 
                     Text="Remove" 
                     />
             </div>
         </div>
    </div>
</asp:Content>
