<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="College_Management.Courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 40%;" align="center">
                <tr>
                    <td>Course ID</td>
                    <td>
                        <asp:TextBox ID="txtCourseID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Course Code</td>
                    <td>
                        <asp:TextBox ID="txtCourseCode" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Course Name</td>
                    <td>
                        <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Credits</td>
                    <td>
                        <asp:TextBox ID="txtCredits" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Semester</td>
                    <td>
                        <asp:TextBox ID="txtSemester" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Department ID</td>
                    <td>
                        <asp:TextBox ID="txtDepartmentID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Style="float:left;" ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                        <asp:Button Style="float:right;" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
                    <td>
                        <asp:Button Style="float:left;margin-left:30px;" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        <asp:Button Style="float:right;" ID="btnFetchAll" runat="server" Text="Fetch All" OnClick="btnFetchAll_Click" /></td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" Width="523px">
        </asp:GridView>
    </form>
</body>
</html>
