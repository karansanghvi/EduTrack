<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPanel.Master" AutoEventWireup="true" CodeBehind="CreateAssignment.aspx.cs" Inherits="EduTrack.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .box {
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        .flex-container {
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

        .uploaded-doc {
            background-color: #D9D9D9;
            border-radius: 10px;
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <h1>Create Assignment</h1>
        <div class="box p-4">
            <div class="pt-2">
                <asp:Label ID="assignmentTitleLabel" runat="server">Enter Title:</asp:Label>
                <asp:TextBox ID="assignmentTitle" runat="server" placeholder="Title" CssClass="custom-textbox"></asp:TextBox>
            </div>
            <br />
            <div class="pt-2">
                <asp:Label ID="assignmentDescriptionLabel" runat="server">Enter Instructions/Description (optional):</asp:Label>
                <asp:TextBox ID="assignmentDescription" runat="server" placeholder="Description" CssClass="custom-textbox"></asp:TextBox>
            </div>
        </div>

        <br /> 

        <br />

        <div class="box p-4">
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                        <asp:Label ID="pointsLabel" runat="server">Enter Points:</asp:Label>
                        <asp:TextBox ID="pointsText" runat="server" Text="Points" CssClass="custom-textbox"></asp:TextBox>
                    </div>
                    <div class="col-sm">
                        <asp:Label ID="dueDateLabel" runat="server">Enter Due Date:</asp:Label>
                        <asp:TextBox ID="dueDate" runat="server" TextMode="Date" CssClass="custom-textbox"></asp:TextBox>
                </div>
                </div>
            </div>
        </div>

        <br />

        <div class="p-4 flex-container">
            <asp:Button 
                ID="Button2" 
                runat="server" 
                Text="Cancel" 
                CssClass="cancel-button" 
                />
            <asp:Button ID="Button1" runat="server" Text="Create Assignment" CssClass="create-button" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
