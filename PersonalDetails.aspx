<%@ Page Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeFile="PersonalDetails.aspx.cs" Inherits="personal_details" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
    <tr>
    <td align="left">
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" Enabled="false"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td align="left">
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Enabled="false"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td align="left">
            <asp:Label ID="Label3" runat="server" Text="Fathers Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Enabled="false"></asp:TextBox></td>
        </tr>
        <tr>
        <td align="left">
            <asp:Label ID="Label4" runat="server" Text="Phone No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
            <td align="left">
                <asp:Label ID="Label5" runat="server" Text="Roll No"></asp:Label></td>
                
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="false"></asp:TextBox></td>
                    </tr>
                    <tr>
                    <td align="left">
                        <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Enabled="false" TextMode="MultiLine" Width="151px"></asp:TextBox>
                        </td>
                        </tr>
                        <tr>
                       <td align="left">
                           <asp:Label ID="Label7" runat="server" Text="Email-Id"></asp:Label>
                           </td>
                           
                           <td>
                               <asp:TextBox ID="TextBox7" Enabled="false" runat="server"></asp:TextBox>
                               </td>
                               </tr>
                               <tr>
                               <td align="center">
                                   <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" />
                                   </td>
                                   <td align="center">
                                       <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                                   <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click" />
                                       
                                   </td>
                                   <td align="center">
                                      </td>
                                   </tr>
                                   <tr>
                                   <asp:Label ID="lblErr" runat="server" ForeColor="red" ></asp:Label></tr>
                                   
        </table>
    
</asp:Content>

