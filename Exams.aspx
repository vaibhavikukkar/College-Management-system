<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exams.aspx.cs" Inherits="College_Management.Exams" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 482px">
    <form id="form1" runat="server">
        <div>
            <table align="center" style="width: 60%;">
                <tr>
                    <td>Exam ID</td>
                    <td>
                        <asp:TextBox ID="txtExamID" runat="server" Width="175px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Course ID</td>
                    <td>
                        <asp:TextBox ID="txtCourseID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Exam Date</td>
                    <td>
                        <asp:TextBox ID="txtExamDate" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Start Time</td>
                    <td>
                        <asp:TextBox ID="txtStartTime" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Duration</td>
                    <td>
                        <asp:TextBox ID="txtDuration" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" /></td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
                    <td>
                        <asp:Button ID="btnFetchAll" runat="server" Text="Fetch All" OnClick="btnFetchAll_Click" /></td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" Width="1401px">
        </asp:GridView>
    </form>
</body>
</html>
