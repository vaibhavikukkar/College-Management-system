<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="College_Management.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
            float: left;
        }
        .auto-style2 {
            width: 48%;
            float: right;
        }
    </style>
</head>
<body style="height: 383px">
    <h1 style="text-align:center;">Student Data</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>StudentID</td>
                    <td>
                        <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>FirstName</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>LastName</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:TextBox ID="txtGender" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" /></td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
                    <td>
                        <asp:Button ID="btnDDelete" runat="server" Text="Delete" OnClick="btnDDelete_Click" /></td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>GuardianName</td>
                    <td>
                        <asp:TextBox ID="txtGuardianName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>GuardianPhone</td>
                    <td>
                        <asp:TextBox ID="txtGuardianPhone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" /></td>
                    <td>
                        <asp:Button ID="btnFetchAll" runat="server" Text="Fetch All" OnClick="btnFetchAll_Click" /></td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView2" runat="server" Width="382px">
        </asp:GridView>
    </form>
</body>
</html>
