<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPanel.Master" AutoEventWireup="true" CodeBehind="ClassworkStudentsWorkTeacherClass.aspx.cs" Inherits="EduTrack.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .document-box {
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        .nav-class {
            background-color: #D9D9D9;
            border: none;
            padding: 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: space-evenly;
        }

        .box {
            background-color: black;
            color: white;
            padding: 10px 20px;
        }

        .flex-container {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px;
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: space-between;
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

        .submit-button {
            background-color: black;
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
        <h1 runat="server" id="H1_ExperimentName">Experiment Name</h1>
        <hr />
        <br />
        <div class="container col-12 row row-gap-2">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-sm-6">
                        <div class="document-box p-3">
                            <div>
                                <h3><%# Eval("StudentName") %></h3>
                                <asp:TextBox ID="TextBox4" runat="server" placeholder="Google Drive Link" Text='<%# Eval("SubData") %>' CssClass="custom-textbox" ></asp:TextBox>
                            </div>
                            <asp:TextBox ID="Textbox1" runat="server" placeholder="Enter Marks" CssClass="custom-textbox"></asp:TextBox>
                            <br /> <br />
                            <div class="text-center">
                                <asp:Button ID="Submit_Marks" runat="server" CssClass="submit-button" Text="Submit" OnClick="Submit_Marks_Click" CommandArgument='<%# Eval("StudentEmail") %>' CommandName='<%# Eval("AssignmentId") %>' />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            </div>
    </div>
</asp:Content>
