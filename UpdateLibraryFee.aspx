<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="UpdateLibraryFee.aspx.cs" Inherits="UpdateLibraryFee" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <table style="width: 351px">
       <tr>
    <td align="left" style="height:55px; width: 92px;" valign="top">
    <h3>
    Update Library Fee
    </h3>
    </td>
    </tr>
    <tr>
    <td style="width: 92px">
        <asp:Label ID="Label1" runat="server" Text="Roll No:"></asp:Label></td>
        <td style="width: 158px">
       <asp:TextBox ID="txtID" runat="server" Width="126px"></asp:TextBox>
   
 </td>
 <td>
      <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button1_Click" />
 </td>
       
   
    </tr>
    <tr>
    <td style="height: 11px; width: 92px;">
        <asp:Label ID="Label2" runat="server" Text="Library Fee:"></asp:Label></td>
        <td style="width: 158px">
        <asp:TextBox ID="TextBox1" runat="server">0</asp:TextBox></td>
    </td>
    </tr>
   <tr>
   <td style="height: 11px; width: 92px;">
       <asp:Label ID="Label4" runat="server" Text="Amount to be updated:"></asp:Label></td>
       <td style="width: 158px">
       
       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
      
   </tr>
    <tr>
    <td style="width: 92px">     
       
       <asp:Button ID="btnChkAll" Text="Update" Visible="true" runat="server" OnClick="btnChkAll_Click" />
       <asp:Label ID="lblErr" runat="server" ForeColor="red" >
       </asp:Label>
       <asp:RequiredFieldValidator ID="ref0" runat="server" ControlToValidate="txtID">
       </asp:RequiredFieldValidator>
       
   
    </td>
    </tr>
   
   
    </table>

</asp:Content>

