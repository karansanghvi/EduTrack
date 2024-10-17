<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="TeacherHomePage.aspx.cs" Inherits="EduTrack.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .create-class-button {
            background-color: black;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
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

        .flex-container {
            display: flex;
            align-items: center;
            justify-content: space-between; 
            gap: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5 text-end">
        <asp:Button 
            ID="createClassButton" 
            runat="server" 
            CssClass="create-class-button" 
            Text="+ Create Class" 
            OnClick="createClass_Click"
            />
        <br /> <br />
        <div class="container centered-content">
            <div class="row gap-5">
                <div class="col-sm feature-card p-5">
                    <h2 class="text-center fw-bold" style="color: black;">Class Name</h2>
                    <br />
                    <div class="flex-container">
                        <asp:Button 
                            ID="viewButton1" 
                            runat="server" 
                            Text="Remove" 
                            CssClass="view-more-button mx-auto d-block" 
                            OnClick="viewTeacherClass_Click"
                            />
                        <asp:Button 
                            ID="Button4" 
                            runat="server" 
                            Text="View" 
                            CssClass="view-more-button mx-auto d-block" 
                            OnClick="viewTeacherClass_Click"
                            />
                    </div>
                </div>
                <div class="col-sm feature-card p-5">
                    <h2 class="text-center fw-bold" style="color: black;">Class Name</h2>
                    <br />
                    <div class="flex-container">
                        <asp:Button 
                            ID="Button1" 
                            runat="server" 
                            Text="Remove" 
                            CssClass="view-more-button mx-auto d-block" 
                            OnClick="viewTeacherClass_Click"
                            />
                        <asp:Button 
                            ID="Button5" 
                            runat="server" 
                            Text="View" 
                            CssClass="view-more-button mx-auto d-block" 
                            OnClick="viewTeacherClass_Click"
                            />
                    </div>
                </div>
            </div>

            <div class="row gap-5 pt-5">
                <div class="col-sm feature-card p-5">
                    <h2 class="text-center fw-bold" style="color: black;">Class Name</h2>
                    <br />
                    <div class="flex-container">
                        <asp:Button 
                            ID="Button2" 
                            runat="server" 
                            Text="Remove" 
                            CssClass="view-more-button mx-auto d-block" 
                            OnClick="viewTeacherClass_Click"
                            />
                        <asp:Button 
                            ID="Button6" 
                            runat="server" 
                            Text="View" 
                            CssClass="view-more-button mx-auto d-block" 
                            OnClick="viewTeacherClass_Click"
                            />
                    </div>
                </div>
                <div class="col-sm feature-card p-5">
                    <h2 class="text-center fw-bold" style="color: black;">Class Name</h2>
                    <br />
                    <div class="flex-container">
                        <asp:Button 
                            ID="Button3" 
                            runat="server" 
                            Text="Remove" 
                            CssClass="view-more-button mx-auto d-block" 
                            OnClick="viewTeacherClass_Click"
                            />
                        <asp:Button 
                            ID="Button7" 
                            runat="server" 
                            Text="View" 
                            CssClass="view-more-button mx-auto d-block" 
                            OnClick="viewTeacherClass_Click"
                            />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
