﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="College_Management.Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 440px">
    <form id="form1" runat="server">
        <div>
            <table align="center" style="width: 50%;">
                <tr>
                    <td>Event ID</td>
                    <td>
                        <asp:TextBox ID="txtEventID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Event Name</td>
                    <td>
                        <asp:TextBox ID="txtEventName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td>
                        <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox></td>
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
        <asp:GridView ID="GridView1" runat="server" Width="675px">
        </asp:GridView>
    </form>
</body>
</html>
