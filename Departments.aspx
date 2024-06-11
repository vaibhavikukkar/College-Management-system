<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="College_Management.Departments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            width: 60%;
            height: 188px;
        }
    </style>
</head>
<body style="height: 364px">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style2">
                <tr>
                    <td>Department ID</td>
                    <td>
                        <asp:TextBox ID="txtDepartmentID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Department Code</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtDepartmentCode" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Department Name</td>
                    <td>
                        <asp:TextBox ID="txtDepartmentName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Head of Department</td>
                    <td>
                        <asp:TextBox ID="txtHOD" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td>
                        <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Style="float:left;" ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                        <asp:Button Style="float:right;" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
                    <td>
                        <asp:Button Style="text-align:center;" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
                    <td>
                        <asp:Button ID="btnFetchAll" runat="server" Text="Fetch All" OnClick="btnFetchAll_Click" /></td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" Width="504px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
