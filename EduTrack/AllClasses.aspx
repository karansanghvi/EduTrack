<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllClasses.aspx.cs" Inherits="EduTrack.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .flex-container {
            display: flex;
            align-items: center;
            justify-content: space-between; 
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

        .text-button-gap {
            margin-right: 20px; 
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <div class="container">
            <div class="row" style="gap: 770px;">
                <div class="col-sm">
                    <h1 style="font-size: 60px;">Classes</h1>
                </div>
                <div class="col-sm">
                    <asp:Button 
                        ID="joinClassButton" 
                        runat="server" 
                        CssClass="custom-button" 
                        Text="+ Join Class" 
                        OnClick="joinClassButton_Click"
                        />
                </div>
            </div>
        </div>
        <hr />
        <div style="background-color: #D9D9D9; border-radius: 10px;" class="p-4 flex-container">
            <h2 style="font-size: 30px;" class="text-button-gap">C# And .NET</h2>
            <asp:Button 
                ID="viewMore1" 
                runat="server" 
                CssClass="view-more-button" 
                Text="View More" 
                OnClick="viewMore_Click"
                />
        </div>
        <br />
        <div style="background-color: #D9D9D9; border-radius: 10px;" class="p-4 flex-container">
            <h2 style="font-size: 30px;" class="text-button-gap">Python Programming</h2>
            <asp:Button ID="Button2" runat="server" Text="View More" CssClass="view-more-button" />
        </div>
    </div>

    <div></div>
</asp:Content>
