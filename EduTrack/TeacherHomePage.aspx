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
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                       <div class="col-md-6 feature-card p-5">
                            <h2 class="text-center fw-bold" style="color: black;"><%# Eval("Name") %></h2>
                            <br />
                            <div class="flex-container">
                                <asp:Button 
                                    ID="viewButton1" 
                                    runat="server" 
                                    Text="Remove" 
                                    CssClass="view-more-button mx-auto d-block" 
                                    OnClick="Remove_Click"
                                    OnClientClick="return confirm('Are you sure you want to remove this class?');"
                                    CommandArgument ='<%# Eval("ID") %>'
                                    />
                                <asp:Button 
                                    ID="Button4" 
                                    runat="server" 
                                    Text="View" 
                                    CssClass="view-more-button mx-auto d-block" 
                                    OnClick="ViewClass_Click"
                                    CommandArgument ='<%# Eval("ID") %>'
                                    CommandName ='<%# Eval("Name") %>'
                                    />
                            </div>
                        </div>
                </ItemTemplate>
            </asp:Repeater>
    </div>
</div>
</asp:Content>
