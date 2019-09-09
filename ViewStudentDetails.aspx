<%@ Page Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeFile="ViewStudentDetails.aspx.cs" Inherits="ViewStudentDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
     <table style="border:2px;border-bottom-color:Red"> 
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Roll.no"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqDetail" runat="server" ControlToValidate="TextBox1" ErrorMessage="*">
        </asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="ok" OnClick="Button1_Click" /></td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CausesValidation="False" /></td></tr>
    </table>


</asp:Content>

