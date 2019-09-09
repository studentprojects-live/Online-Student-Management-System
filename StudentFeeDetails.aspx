<%@ Page Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeFile="StudentFeeDetails.aspx.cs" Inherits="fee_details_for_student" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
<tr>
<td align="left">
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
</td>
</tr>
<tr>
<td align="left">
    <asp:Label ID="Label2" runat="server" Text="Roll No"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
</td>
</tr>
<tr>
<td align="left">
    <asp:Label ID="Label3" runat="server" Text="Tution Fee Due"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
</td>
</tr>
<tr>
<td align="left">
    <asp:Label ID="Label4" runat="server" Text="Admission Fee Due"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
</td>
</tr>
<tr>
<td align="left">
    <asp:Label ID="Label5" runat="server" Text="Library Fee"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
</td>
</tr>
<tr>
<td align="left">
    <asp:Label ID="Label6" runat="server" Text="Bus Fee"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center">
    <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" 
        Width="58px" />
</td>
<td align="center">
    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblErr" runat="server"></asp:Label>
</td>
</tr>
</table>
</asp:Content>

