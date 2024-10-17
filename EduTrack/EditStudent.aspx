<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="EduTrack.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="p-2">
        <h1>Edit Student Details</h1>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
</asp:Content>
