<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="College_Management.Faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 494px">
    <form id="form1" runat="server">
        <div>
            <table align="center" style="width: 50%;">
                <tr>
                    <td>Faculty ID</td>
                    <td>
                        <asp:TextBox ID="txtFacultyID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:TextBox ID="txtGender" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>E-Mail</td>
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
                    <td>Department ID</td>
                    <td>
                        <asp:TextBox ID="txtDepartmentID" runat="server"></asp:TextBox></td>
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
        <asp:GridView ID="GridView1" runat="server" Width="1391px">
        </asp:GridView>
    </form>
</body>
</html>
