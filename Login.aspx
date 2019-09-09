<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center> <table>
    <tr>
    <td style="width: 578px">
       
        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 478px">
        <asp:TextBox ID="txtusername" runat="server" 
            OnTextChanged="TextBox1_TextChanged" Width="151px"></asp:TextBox>
    </td>
    <td rowspan="6" valign="top">
    &nbsp;
    <asp:Image ID="img" runat="server" Width="528px" Height="300px" 
            ImageUrl="~/Images/grp.JPG" style="margin-left: 109px"/>
    </td>
    </tr>
    <tr>
    <td align="left" style="width: 578px">
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:RequiredFieldValidator ID="refPassword" runat="server" ControlToValidate="txtpassword" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 478px">
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="center" style="width: 578px">
        <asp:Button ID="btnLogin" runat="server" Text="Login" 
            OnClick="btnLogin_Click" />
        </td>
        <td align="center" style="width: 478px">
        
            <asp:Button ID="btnClear" CausesValidation="false" runat="server" Text="Clear" OnClick="btnClear_Click" />
    </td>
    </tr>
   <tr><td colspan="2">
       <asp:Label ID="lblmsg" Font-Bold="true" ForeColor="red" runat="server"></asp:Label></td></tr>
    <tr>
    <td colspan="2" align="left">
        <asp:HyperLink ID="hlinkregister" runat="server" NavigateUrl="~/Register.aspx">New 
        Registration</asp:HyperLink>
    </td>
    </tr>
    <tr>
    <td style="height:230px; width:578px;">
    
    </td>
    </tr>
    </table>
    </center>
</asp:Content>

