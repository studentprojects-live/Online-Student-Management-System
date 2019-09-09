<%@ Page Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeFile="studentHomePage.aspx.cs" Inherits="home_page_of_student" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="400">
    <tr>
    <td  align="left" colspan="2" style="height: 21px">
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/PersonalDetails.aspx" >Personal 
        Details</asp:LinkButton>
   <br />
   <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/StudentFeeDetails.aspx">Fee 
        Details</asp:LinkButton>
   <br />
   <asp:LinkButton ID="lng" runat="server" PostBackUrl="~/logout.aspx" Text="LogOut"></asp:LinkButton>
   
    </td>
    
  
    
    </tr>
    
    </table>
    
</asp:Content>

