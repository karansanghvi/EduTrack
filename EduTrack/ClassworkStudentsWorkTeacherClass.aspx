<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPanel.Master" AutoEventWireup="true" CodeBehind="ClassworkStudentsWorkTeacherClass.aspx.cs" Inherits="EduTrack.WebForm18" %>
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
        <h1>Experiment Name</h1>
        <hr />
        <div class="nav-class mb-4">
            <a class="nav-link" aria-current="page" href="ClassworkAssignmentTeacherClass.aspx">Assignment</a>
            <a class="nav-link active box" aria-current="page" href="ClassworkStudentsWorkTeacherClass.aspx">Student's Work</a>
        </div>
        <h2><a href="ClassworkTeacherClass.aspx" style="text-decoration: none; color: black;">Classwork ></a> Student's Work</h2>
        <br />
            <div class="flex-container">
                <h1>1</h1> 
                <p>Handed In</p>
                <h1>0</h1>
                <p>Assigned</p>
            </div>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <div class="document-box p-3">
                        <div>
                            <h3>Karan Sanghvi</h3>
                            <p>View Work</p>
                        </div>
                        <asp:TextBox ID="enterMarks" runat="server" placeholder="Enter Marks" CssClass="custom-textbox"></asp:TextBox>
                        <br /> <br />
                        <div class="text-center">
                            <asp:Button ID="button1" runat="server" CssClass="submit-button" Text="Submit" />
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="document-box p-3">
                        <div>
                            <h3>Karan Sanghvi</h3>
                            <p>View Work</p>
                        </div>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Marks" CssClass="custom-textbox"></asp:TextBox>
                        <br /> <br />
                        <div class="text-center">
                            <asp:Button ID="button2" runat="server" CssClass="submit-button" Text="Submit" />
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="document-box p-3">
                        <div>
                            <h3>Karan Sanghvi</h3>
                            <p>View Work</p>
                        </div>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Marks" CssClass="custom-textbox"></asp:TextBox>
                        <br /> <br />
                        <div class="text-center">
                            <asp:Button ID="button3" runat="server" CssClass="submit-button" Text="Submit" />
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="document-box p-3">
                        <div>
                            <h3>Karan Sanghvi</h3>
                            <p>View Work</p>
                        </div>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Marks" CssClass="custom-textbox"></asp:TextBox>
                        <br /> <br />
                        <div class="text-center">
                            <asp:Button ID="button4" runat="server" CssClass="submit-button" Text="Submit" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
