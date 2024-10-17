<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="EditTeacher.aspx.cs" Inherits="EduTrack.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="p-2">
        <h1>Edit Teacher Details</h1>

        <asp:Button ID="Button1" runat="server" Text="+ Add New" CssClass=" btn btn-primary" OnClick="Button1_Click" />

        <br />
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            OnRowDeleting="GridView1_RowDeleting" 
            OnRowCommand="GridView1_RowCommand" 
            DataKeyNames="ID" 
            ShowHeaderWhenEmpty="True"
            CssClass="table table-striped table-bordered">
    
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" />
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" />

        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="ResetPasswordButton" runat="server" Text="Reset Password"
                    CommandName="ResetPassword" CommandArgument='<%# Eval("Email") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="DeleteButton" runat="server" Text="Delete" 
                    CommandName="Delete" CommandArgument='<%# Eval("Email") %>' 
                    OnClientClick="return confirm('Are you sure you want to delete this record?');" />
            </ItemTemplate>
        </asp:TemplateField>

        

    </Columns>
</asp:GridView>

    </div>
</asp:Content>
