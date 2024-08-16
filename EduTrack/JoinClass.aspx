<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="JoinClass.aspx.cs" Inherits="EduTrack.WebForm8" %>
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

        .join-button {
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
        <h1>Join Class</h1>
        <hr />
        <div class="box p-4">
            <h3>Class Code</h3>
            <p class="description">Ask your teacher for the class code, then enter it to join the class</p>
            <div class="pt-2">
                <asp:TextBox ID="classCode" runat="server" placeholder="Class Code" CssClass="custom-textbox"></asp:TextBox>
            </div>
            <div class="p-4 flex-container">
                <asp:Button 
                    ID="Button2" 
                    runat="server" 
                    Text="Cancel" 
                    CssClass="cancel-button" 
                    OnClick="cancelButton_Click"
                    />
                <asp:Button ID="Button1" runat="server" Text="Join Class" CssClass="join-button" />
            </div>
        </div>
    </div>
</asp:Content>
