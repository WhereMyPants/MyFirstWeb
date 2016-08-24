<%@ Page Title="" Language="C#" MasterPageFile="~/UI层/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="UI层_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>用户名:</td>
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </tr>
        <tr>
            <td>密码:</td>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        </tr>
        <tr>
            <asp:Button ID="btnlogin" runat="server" Text="登 陆" />
            <asp:Button ID="btnregist" runat="server" Tect="注 册" />
        </tr>
    </table>
</asp:Content>

