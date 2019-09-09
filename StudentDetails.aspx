<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="StudentDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
    <tr>
    <td align="left">
        <asp:Label ID="Label1" runat="server" Text="first name"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label2" runat="server" Text="last name"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label3" runat="server" Text="father name"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label4" runat="server" Text="phone no"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label5" runat="server" Text="email id"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label6" runat="server" Text="roll no"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label7" runat="server" Text="address"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label8" runat="server" Text="branch id"></asp:Label>
    </td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="148px">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label9" runat="server" Text="year"></asp:Label>
    </td>
    <td>
        <asp:DropDownList ID="DropDownList2" runat="server" Width="151px">
            <asp:ListItem>I</asp:ListItem>
            <asp:ListItem>II-I</asp:ListItem>
            <asp:ListItem>II-II</asp:ListItem>
            <asp:ListItem>III-I</asp:ListItem>
            <asp:ListItem>III-II</asp:ListItem>
            <asp:ListItem>IV-I</asp:ListItem>
            <asp:ListItem>IV-II</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label10" runat="server" Text="bus fee"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label11" runat="server" Text="tution fee"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label12" runat="server" Text="library fee"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
<td align="left">
    <asp:Label ID="Label13" runat="server" Text="admission fee"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
</td>
    </tr>
    <tr>
    <td align="center">
        <asp:Button ID="Button1" runat="server" Text="edit" />
    </td>
    <td align="center">
        <asp:Button ID="Button2" runat="server" Text="update" />
    </td>
    <td>
        <asp:Button ID="Button3" runat="server" Text="ok" />
    </td>
    </tr>
    </table>


</asp:Content>

