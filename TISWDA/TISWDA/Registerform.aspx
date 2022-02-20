<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registerform.aspx.cs" Inherits="TISWDA.Registerform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
         #HyperLink1{
            text-decoration:none;
            color:black;
        }
     .auto-style4 {
         font-size: medium;
         color: #000000;
     }
    </style>
</head>
   <body style="font-weight: 700; font-size: x-large; color: #FF5050; height: 274px;">
    <form id="form1" runat="server" class="auto-style12">
    
        <h1 class="auto-style1">Register Form</h1>
        <table align="center" class="style1" style="border: thin solid #bb4444">
          
            <tr>
                <td class="auto-style4">
                    <span class="auto-style14">Id Number</span> </td>
                <td class="style2">
                    <asp:TextBox ID="txtID" runat="server" Width="120px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtID" ErrorMessage="Please, enter Id number" 
                        ForeColor="Red" CssClass="auto-style11" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style4">
                    Fullname </td>
                <td class="style2">
                    <asp:TextBox ID="txtname" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="Please, enter Fullname" 
                        ForeColor="Red" CssClass="auto-style11" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr> 
            <tr>
                <td class="auto-style4">
                    Password </td>
                <td class="style2">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="Please, enter password" 
                        ForeColor="Red" CssClass="auto-style11" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Re-Password </td>
                <td class="style2">
                    <asp:TextBox ID="txtrepassword" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtrepassword" ErrorMessage="Please, enter re-password" 
                        ForeColor="Red" CssClass="auto-style11" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="btnregister" runat="server"
                        Text="Register" CssClass="auto-style13" Width="106px" OnClick="btnregister_Click" style="font-size: medium; font-weight: bold" />
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
                   <tr>
                <td colspan="3"style="text-align: right;" class="auto-style16">
                    <asp:HyperLink ID ="HyperLink1" NavigateUrl="~/Loginform.aspx" runat="server" CssClass="auto-style17" style="font-size: small">Already have an account? Log In</asp:HyperLink>
                </td>
            </tr>
              
   
        </table>
    </form>
   
</body>
</html>
