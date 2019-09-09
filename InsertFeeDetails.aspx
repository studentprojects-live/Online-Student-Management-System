<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="InsertFeeDetails.aspx.cs" Inherits="InsertFeeDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="height: 274px" id="tbl1">
<tr> <td>
    <asp:Label ID="Label1" runat="server" Text="Roll Number"></asp:Label></td> <td> 
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            Height="25px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            Width="110px">
        </asp:DropDownList>
    </td> <td> 
            &nbsp;</td></tr>
<tr> <td>  
    <asp:Label ID="Label6" runat="server" Text="Tution Fees"></asp:Label>
</td>
   <td>
    <asp:TextBox ID="txt_tutionfee" runat="server"></asp:TextBox></td>
      <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
         ErrorMessage="please enter tution fees" ControlToValidate="txt_tutionfee"></asp:RequiredFieldValidator></td>
         
    

 </tr>
<tr> <td>
    <asp:Label ID="Label3" runat="server" Text="Bus Fees"></asp:Label></td> <td>
        <asp:TextBox ID="txt_busfee" runat="server"></asp:TextBox></td> 
<td> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="please enter bus fee" ControlToValidate="txt_busfee"></asp:RequiredFieldValidator> </td></tr>
<tr> <td>
    <asp:Label ID="Label7" runat="server" Text="Admission Fees"></asp:Label></td>
    
     <td>   <asp:TextBox ID="txt_admissionfee" runat="server"></asp:TextBox> </td>
        <td>    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="please enter admission fee" ControlToValidate="txt_admissionfee"></asp:RequiredFieldValidator> </td> 
   </tr>
<tr> <td> 
    <asp:Label ID="Label8" runat="server" Text="Library Fees"></asp:Label></td>
    
  <td>  <asp:TextBox ID="txt_libraryfee" runat="server"></asp:TextBox> </td>
   <td>     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txt_libraryfee" ErrorMessage="please enter library fee"></asp:RequiredFieldValidator>
    </td> 
   </tr>
<tr> <td>
    <asp:Button ID="btn_insert" runat="server" Text="Insert" 
        onclick="btn_insert_Click" /></td> <td>
        <asp:Button ID="btn_clear" runat="server" Text="clear" 
            onclick="btn_clear_Click" /> </td> <td> 
        <asp:Label ID="resultlbl" runat="server" Text="result"></asp:Label>
    </td></tr>
<tr>
<td colspan="3">
    <asp:Label ID="lblErr" runat="server" Text="Label" Visible="False"></asp:Label>
</td>
</tr>
</table>
</asp:Content>

