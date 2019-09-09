<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table>
    <tr><td align="left">
        <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
        &nbsp;</td>
    <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Enter only characters" ControlToValidate="txtName" 
            ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        &nbsp;</td>
      <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="Enter only characters" ControlToValidate="txtLastName" 
            ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
    </td>
    </tr>
    
    <tr>
    <td style="height: 26px" align="left">
        <asp:Label ID="Label3" runat="server" Text="Father Name"></asp:Label>
    </td>
    <td style="height: 26px">
        <asp:TextBox ID="txtFather" runat="server"></asp:TextBox>
    </td>
    <td style="height: 26px">
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFather" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    
    <td style="width: 94px">
    
        &nbsp;</td>
    
      <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ErrorMessage="Enter only characters" ControlToValidate="txtFather" 
            ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr><td align="left">
        <asp:Label ID="Label4" runat="server" Text="Phone No"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtphone" runat="server" MaxLength="10"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphone" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
            ControlToValidate="txtphone" ErrorMessage="please enter valid(10)phone number" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    </td>
    <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ErrorMessage="Enter Numbers only" ValidationExpression="^\d+$" 
            ControlToValidate="txtphone"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        &nbsp;</td>
    <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Enter correct Email address" ControlToValidate="txtEmail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label6" runat="server" Text="Roll No"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtrollno" runat="server"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtrollno" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label11" runat="server" Text="User Name"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUserName" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        &nbsp;</td>
    </tr>
    
    <tr>
    <td align="left">
        <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        &nbsp;</td>
    </tr>
    
    
    <tr>
    <td align="left">
        <asp:Label ID="Label12" runat="server" Text="Confirm Password"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtPassword" ControlToValidate="TextBox1" 
            ErrorMessage="please enter valid password"></asp:CompareValidator>
    </td>
    </tr>
    
    
    <tr>
    <td align="left">
        <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="149px" 
            Height="54px"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td align="left">
        <asp:Label ID="Label9" runat="server" Text="Branch"></asp:Label>
    </td>
    <td>
        <asp:DropDownList ID="ddlBranch" runat="server" Width="154px">
            <asp:ListItem>csit</asp:ListItem>
            <asp:ListItem>cse</asp:ListItem>
            <asp:ListItem>ece</asp:ListItem>
            <asp:ListItem>eee</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlBranch" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td align="left">
  
        <asp:Label ID="Label10" runat="server" Text="Year"></asp:Label>
    
    </td>
    <td>
        <asp:DropDownList ID="ddlYear" runat="server" Width="156px">
            <asp:ListItem>Select...</asp:ListItem>
            <asp:ListItem>I</asp:ListItem>
            <asp:ListItem>II-I</asp:ListItem>
            <asp:ListItem>II-II</asp:ListItem>
            <asp:ListItem>III-I</asp:ListItem>
            <asp:ListItem>III-I</asp:ListItem>
            <asp:ListItem>IV-I</asp:ListItem>
            <asp:ListItem>IV-II</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td>
        &nbsp;</td>
    <td style="width: 94px">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlYear" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td style="width: 94px">
    
        &nbsp;</td>
    </tr>
    <tr>
    <td align="center">
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </td>   
    <td align="center">
        <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" 
            CausesValidation="False" />
        </td>
    <td align="center">
        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
            PostBackUrl="~/Login.aspx">GoTo Login</asp:LinkButton>
        </td>
   </tr>
    <tr>
    <td>
    <asp:Label ID="lblStatus" runat="server"></asp:Label>

    </td>
    </tr>
 
    </table>
    </asp:Content>

