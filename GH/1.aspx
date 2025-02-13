<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyWebApp.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Пример страницы ASP.NET</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMessage" runat="server" Text="Введите ваше имя:" />
            <asp:TextBox ID="txtName" runat="server" />
            <asp:Button ID="btnSubmit" runat="server" Text="Отправить" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>