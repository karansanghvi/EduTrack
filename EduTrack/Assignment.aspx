<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Assignment.aspx.cs" Inherits="EduTrack.WebForm2" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <p class="description">Course Name</p>
        <h1>Experiment Name</h1>
        <div class="flex-container">
            <p class="description">25 points</p>
            <p class="description">Due 11th August</p>
        </div>
        <hr />

        <div class="container">
            <div class="row gap-5">
                <div class="col-sm p-3 assignment-card">
                    <h3>Reference Documents:</h3>
                    <p class="description">Download this reference document</p>
                </div>
                <div class="col-sm">
                    <div class="p-3 work-card">
                        <h3>Your Work</h3>
                        <div style="border: 1px solid #ccc; border-radius: 10px;" class="p-3">
                            <h6>Submit Here</h6>
                        </div>
                        <br />
                        <asp:Button ID="upload" runat="server" Text="Upload File" CssClass="custom-button" />
                    </div>
                    <br />
                    <div class="p-3 work-card">
                        <h3>Your Grade</h3>
                        <div style="border: 1px solid #ccc; border-radius: 10px;" class="p-3">
                            <p class="description">25/25</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
