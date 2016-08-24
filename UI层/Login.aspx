<%@ Page Title="" Language="C#" MasterPageFile="~/UI层/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="UI层_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Script/CheckNotNull.js" type="text/javascript"></script>
    <script type="text/javascript">
        function MustSetCheck() {
            if (!Check(document.getElementById("<%=txtusername.ClientID%>"))) {
                alert("用户名不能为空!");
                return false;
            }
            if (!Check(document.getElementById("<%=txtpassword.ClientID%>"))) {
                alert("密码不能为空!");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>用户名:</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>密码:</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="登 陆" OnClientClick="return MustSetCheck()" />
            </td>
            <td>
                <asp:Button ID="btnregist" runat="server" Text="注 册" />
            </td>            
        </tr>
    </table>
</asp:Content>

