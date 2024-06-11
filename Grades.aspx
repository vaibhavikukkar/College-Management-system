﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grades.aspx.cs" Inherits="College_Management.Grades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 374px">
    <form id="form1" runat="server">
        <div>
            <table align="Center" style="width: 50%;">
                <tr>
                    <td>Grade ID</td>
                    <td>
                        <asp:TextBox ID="txtGradeID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Enrollment ID</td>
                    <td>
                        <asp:TextBox ID="txtEnrollmentID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Marks</td>
                    <td>
                        <asp:TextBox ID="txtMarks" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Grade</td>
                    <td>
                        <asp:TextBox ID="txtGrade" runat="server"></asp:TextBox></td>
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
        <asp:GridView ID="GridView1" runat="server" Width="731px">
        </asp:GridView>
    </form>
</body>
</html>
