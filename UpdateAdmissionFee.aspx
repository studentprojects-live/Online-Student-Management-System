<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="UpdateAdmissionFee.aspx.cs" Inherits="UpdateAdmissionFee" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table>
     <tr>
    <td align="left" style="height:70px;" valign="top">
    <h3>
    Update Admission Fee
    </h3>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Roll No:"></asp:Label></td>
        <td>
       <asp:TextBox ID="txtID" runat="server">
       </asp:TextBox></td>
       
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Admission Fee:"></asp:Label></td>
        <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label3" runat="server" Text="Amount to be updated:"></asp:Label></td>
        <td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
    
    </td>
    </tr>
    <tr>
    <td>
        
       <asp:Button ID="btnChkAll" Text="Update" Visible="true" runat="server" 
            OnClick="btnChkAll_Click" />
       <asp:Label ID="lblErr" runat="server" ForeColor="red" >
       </asp:Label>
       <asp:Button id="btnText" Text="Submit" runat="server" OnClick="btnText_Click" />
       
       <asp:RequiredFieldValidator ID="ref" runat="server" ControlToValidate="txtID">
       </asp:RequiredFieldValidator>
    </td>
    </tr>
   
   
    </table>


</asp:Content>

