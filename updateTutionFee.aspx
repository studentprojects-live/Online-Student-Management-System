<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="updateTutionFee.aspx.cs" Inherits="updateTutionFee" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
    <tr>
    <td align="left" style="height:70px;" valign="top">
    Update Tution Fee
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Roll No:"></asp:Label></td>
        <td>
       <asp:TextBox ID="txtID" runat="server">
       </asp:TextBox></td>
       <td>
       <asp:Button id="btnText0" Text="Submit" runat="server" OnClick="btnText_Click" />
        </td>
       <td>
           &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label2" runat="server" Text="Tution Fee Due:"></asp:Label></td>
        <td>
        <asp:TextBox ID="TextBox1"
         runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        &nbsp;</td>
    <td>
        &nbsp;</td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label4" runat="server" Text="Amount to pay"></asp:Label> </td>
        <td>
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
   
      
    </tr>
    <tr>
    <td>
        
       <asp:Button ID="btnChkAll" Text="Update" Visible="true" runat="server" OnClick="btnChkAll_Click" />
       <asp:Label ID="lblErr" runat="server" ForeColor="red" >
       </asp:Label>
       <asp:RequiredFieldValidator ID="ref0" runat="server" ControlToValidate="txtID">
       </asp:RequiredFieldValidator>
    </td>
    </tr>
   
   
    </table>
    


</asp:Content>


