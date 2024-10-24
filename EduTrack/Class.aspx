<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="Class.aspx.cs" Inherits="EduTrack.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .class-name-card {
            border: 1px solid #ccc;
            border-radius: 20px;
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
        <h1 runat="server" id="h1_className">Class Name</h1>
        <hr />
    </div>

    <br />

    <div class="container">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col-sm feature-card p-4">
                    <h2 class="text-start fw-bold pt-2" style="color: black;"><%# Eval("Title") %></h2>
                    <h6 class="text-end fw-bold" style="color: black;">Due: <%# Eval("Due", "{0:dd-MM-yy}") %></h6>
                    <br />
                    <asp:Button 
                        ID="viewButton1" 
                        runat="server" 
                        Text="View Assignment" 
                        CssClass="view-more-button mx-auto d-block" 
                        OnClick="viewAssignment_Click"
                        CommandArgument = '<%# Eval("Id") %>'
                        />
                </div>
                <br />
            </ItemTemplate>
        </asp:Repeater>
        
    </div>
</asp:Content>
