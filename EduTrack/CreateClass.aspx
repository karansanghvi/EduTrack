<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPanel.Master" AutoEventWireup="true" CodeBehind="CreateClass.aspx.cs" Inherits="EduTrack.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <h1>Create Class</h1>
        <hr />
        <div class="box p-4">
            <div class="pt-2">
                <asp:Label ID="classNameLabel" runat="server">Enter Class Name:</asp:Label>
                <asp:TextBox ID="className" runat="server" placeholder="Name" CssClass="custom-textbox"></asp:TextBox>
            </div>
            <br />
            <div class="pt-2">
                <asp:Label ID="classDescriptionLabel" runat="server">Enter Class Description:</asp:Label>
                <asp:TextBox ID="classDescription" runat="server" placeholder="Description" CssClass="custom-textbox"></asp:TextBox>
            </div>
            <div class="p-4 flex-container">
                <asp:Button 
                    ID="Button2" 
                    runat="server" 
                    Text="Cancel" 
                    CssClass="cancel-button" 
                    />
                <asp:Button ID="Button1" runat="server" Text="Create Class" OnClick="Button1_Click" CssClass="create-button" />
            </div>
        </div>
    </div>
</asp:Content>
