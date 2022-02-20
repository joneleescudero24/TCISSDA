<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginform.aspx.cs" Inherits="TISWDA.Loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
.center{
     margin-left:auto;
     margin-right:auto;
     margin-top:50px;
 }
        .auto-style1 {
            font-weight: bold;
            text-align: center;
        }
    
        .auto-style12 {
            height: 276px;
            width: 1341px;
            margin-bottom: 16px;
        }
  
        #HyperLink1{
            text-decoration:none;
            color:black;
        }
        .auto-style13 {
            font-size: large;
        }

        .auto-style14 {
            font-size: medium;
        }

        .auto-style15 {
            width: 139px;
        }

        .auto-style16 {
            height: 21px;
        }

        .auto-style17 {
            font-size: small;
        }

        .auto-style18 {
            font-size: medium;
            color: #000000;
        }
        .auto-style19 {
            color: #000000;
        }
        .auto-style21 {
            width: 139px;
            font-weight: normal;
        }

     .auto-style22 {
         font-size: medium;
         font-weight: bold;
     }

    </style>
</head>
<body style="font-weight: 700; font-size: x-large; color: #FF5050; height: 274px;">
    <form id="form1" runat="server" class="auto-style12">
    
        <h1 class="auto-style1">Admin Login Form</h1>
      
        <table align="center" class="style1" style="border: thin solid #bb4444">
           
            <tr>
                <td class="auto-style19">
                    <span class="auto-style14">Id Number</span> </td>
                <td class="style2">
                    <asp:TextBox ID="txtID" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtID" ErrorMessage="Please, enter Id number" 
                        ForeColor="Red" CssClass="auto-style11" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <span class="auto-style13">Password</span> </td>
                <td class="style2">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="Please, enter password" 
                        ForeColor="Red" CssClass="auto-style11" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <strong>
                    <asp:Button ID="btnlogin" runat="server"
                        Text="Login" CssClass="auto-style22" Width="106px" OnClick="btnlogin_Click" />
                    </strong>
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
                    <asp:HyperLink ID ="HyperLink1" NavigateUrl="~/Registerform.aspx" runat="server" CssClass="auto-style17">Don't have an account? Sign Up</asp:HyperLink>
                </td>
            </tr>
              
   
        </table>
           
    </form>
</body>
</html>
