<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="College_Management.Attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="Center" style="width: 50%;">
                <tr>
                    <td>Attendance ID</td>
                    <td>
                        <asp:TextBox ID="txtAttendanceID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Student ID</td>
                    <td>
                        <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Course ID</td>
                    <td>
                        <asp:TextBox ID="txtCourseID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>
                        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox></td>
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
        <asp:GridView ID="GridView1" runat="server" Width="884px">
        </asp:GridView>
    </form>
</body>
</html>
