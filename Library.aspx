<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="College_Management.Library" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 466px">
    <form align="center" id="form1" runat="server">
        <div>
            <table align="center" style="width: 50%;">
                <tr>
                    <td>Book ID</td>
                    <td>
                        <asp:TextBox ID="txtBookID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Author</td>
                    <td>
                        <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>ISBN</td>
                    <td>
                        <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Avaliable</td>
                    <td>
                        <asp:TextBox ID="txtAvaliable" runat="server"></asp:TextBox></td>
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
        <asp:GridView ID="GridView1" runat="server" Width="771px">
        </asp:GridView>
    </form>
</body>
</html>
