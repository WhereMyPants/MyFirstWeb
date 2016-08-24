<%@ Page Title="" Language="C#" MasterPageFile="~/UI层/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="UI层_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function Check() {
            var username = document.getElementById("<%=txtusername.ClientID%>");
            var password = document.getElementById("<%=txtpassword.ClientID%>");
            if (username.value == "") {
                alert("用户名不能为空!");
                return false;
            }
            else if (password.value == "") {
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
                <asp:Button ID="btnlogin" runat="server" Text="登 陆" OnClientClick="return Check()" />
            </td>
            <td>
                <asp:Button ID="btnregist" runat="server" Text="注 册" />
            </td>            
        </tr>
    </table>
</asp:Content>

