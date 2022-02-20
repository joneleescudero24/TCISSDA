<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="TISWDA.Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style4 {
            width: 163px;
        text-align: left;
    }
        .auto-style5 {
        width: 165px;
        text-align: left;
    }
        ul.na-menu {
    list-style-type: none;
    background-color:indianred;
    background-size:20px ;
}
 .sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: indianred;
  position: fixed;
  height: 100%;
  overflow: auto;

}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {

  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

        @media screen and (max-width: 4px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 4px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
 .footer {
   position: fixed;
   left: 10px;
   bottom: 0;
   width: 100%;
  background-color:indianred;
   color: white;
   text-align: center;
}
        .auto-style7 {
        width: 162px;
        text-align: left;
    }
        .auto-style8 {
            width: 173px;
        text-align: left;
    }
        div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}
    .auto-style10 {
        font-size: xx-large;
    }
 .nav-header {
  overflow: hidden;
  background-color: indianred;
  position: fixed;
  top: 0;
  width: 100%;
}

.nav-header a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

    .auto-style11 {
        width: 100%;
    }
 



    .auto-style12 {
        width: 117px;
    }
     .auto-style13 {
        width: 400px;
    }
 



    .auto-style14 {
        height: 43px;
    }
 



    .auto-style17 {
        width: 67px;
        height: 11px;
    }
    .auto-style18 {
        margin-top: 0px;
    }
 



    .auto-style19 {
        width: 67px;
    }
 



    </style>
</head>
<body>
    <div class="nav-header">
                    <a class="auto-style11" runat="server"><span class="auto-style10">Taguig Survey System</span></a>
                </div>
    <form runat="server">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="auto-style9">
                
                <div class="sidebar">
                    <ul class="na-menu">
                        <li class="auto-style5"><a runat="server" href="~/Dashboard.aspx">Dashboard</a></li>
                        <li class="auto-style7"><a runat="server" href="~/Recommendation.aspx">Recommendation</a></li>
                        <li class="auto-style8"><a runat="server" href="~/Staff.aspx">Staff</a></li>
                        <li class="auto-style4"><a runat="server" href="~/ViewInformation.aspx">View Information</a></li>
                        <li class="auto-style5"><a runat="server" href="~/EditInformation.aspx">Edit Information</a></li>
                        <li class="auto-style7"><a runat="server" href="~/Logout.aspx">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
         <div class="content" style="width: 945px; height: auto; padding-top:20px; margin-top: 60px;">
            <h3>Staff</h3>
            <div style="margin-top:20px; margin-left:60px; margin-right:60px;" >
                <div style="border-style: solid; border-color: inherit; border-width: 1px; margin: 0; padding: 0;" class="auto-style14" ><h3>Add Staff Account</h3>
          
        </div>
                <div style="border:solid 1px;padding-left:20px;padding-top:10px; margin-top:10px; margin-left:0px; margin-top:0;margin-right:0px;" >
              
                    <table>
                   <tr>
                    <td style="padding-bottom:10px; " class="auto-style12" ><asp:Label runat="server" Text="Name"></asp:Label></td>
                         <td style="padding-bottom:10px; " class="auto-style13" ><asp:Textbox runat="server" id="name" Width="400px" CssClass="auto-style18" Height="25px"></asp:Textbox></td>
                        <td style="padding-bottom:10px; " class="auto-style19" ><asp:Label runat="server" Text="Image"></asp:Label></td>
                  <td style="padding-bottom:10px; " class="auto-style12" ><asp:FileUpload ID="FileUpload1" runat="server" Height="25px" /></td>
                         </tr>
                   <tr>
                    <td style="padding-bottom:10px;" class="auto-style12"><asp:Label runat="server" Text="ID Number"></asp:Label></td>
                       <td style="padding-bottom:10px;" class="auto-style17"><asp:Textbox runat="server" id="id" Width="400px" Height="25px"></asp:Textbox></td>
                       </tr>

                   <tr>
                    <td style="padding-bottom:10px;" class="auto-style12"><asp:Label runat="server" Text="Designated Area"></asp:Label></td>
                        <td style="padding-bottom:10px;" class="auto-style13"><asp:DropDownList runat="server" id="designated" Width="400px" Height="21px">
                        <asp:ListItem>Bagumbayan</asp:ListItem>
                        <asp:ListItem>Bambang</asp:ListItem>
                        <asp:ListItem>Calzada</asp:ListItem>
                        <asp:ListItem>Hagonoy</asp:ListItem>
                        <asp:ListItem>Ibayo Tipas</asp:ListItem>
                        <asp:ListItem>Ligid Tipas</asp:ListItem>
                        <asp:ListItem>Lower Bicutan</asp:ListItem>
                        <asp:ListItem>New Lower Bicutan</asp:ListItem>
                        <asp:ListItem>Napindan</asp:ListItem>
                        <asp:ListItem>Palingon</asp:ListItem>
                        <asp:ListItem>San Miguel</asp:ListItem>
                        <asp:ListItem>Santa Ana</asp:ListItem>
                        <asp:ListItem>Tuktukan</asp:ListItem>
                        <asp:ListItem>Ususan</asp:ListItem>
                        <asp:ListItem>Wawa</asp:ListItem>
                        <asp:ListItem>Central Bicutan</asp:ListItem>
                        <asp:ListItem>Central Signal Village</asp:ListItem>
                        <asp:ListItem>Fort Bonifacio</asp:ListItem>
                        <asp:ListItem>Katuparan</asp:ListItem>
                        <asp:ListItem>Maharlika Village</asp:ListItem>
                        <asp:ListItem>North Daang Hari</asp:ListItem>
                        <asp:ListItem>North Signal Village</asp:ListItem>
                        <asp:ListItem>Pinagsama</asp:ListItem>
                        <asp:ListItem>South Daang Hari</asp:ListItem>
                        <asp:ListItem>South Signal Village</asp:ListItem>
                        <asp:ListItem>Bagong Tanyag</asp:ListItem>
                        <asp:ListItem>Upper Bicutan</asp:ListItem>
                        <asp:ListItem>Western Bicutan</asp:ListItem>
                        </asp:DropDownList></td>
                       </tr>
                   <tr>
                         <td style="padding-bottom:10px;" class="auto-style12"><asp:Label runat="server" Text="Password"></asp:Label></td>
                         <td style="padding-bottom:10px;" class="auto-style13"><asp:Textbox runat="server" id="pass" Width="400px" Height="25px"></asp:Textbox></td>
                       </tr>
                       <tr>
                        <td style="padding-bottom:10px;" class="auto-style12"><asp:Button runat="server" Text="Save" OnClick="button1_Click" PostBackUrl="~/Staff.aspx" ></asp:Button></td>
                    </tr>
                         
             
                   
                    
                      
               </table>
                    </div>
                </div>

             <div>
                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             </div>
             <div style="position:center; padding-left: 55px; padding-bottom :50px; padding-top :50px;">

                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="id" DataSourceID="SqlDataSource1" >
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                         <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
                         <asp:BoundField DataField="Designated_area" HeaderText="Designated_area" SortExpression="Designated_area" />
                         <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                         <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                             <ControlStyle Height="100px" Width="100px" />
                         </asp:ImageField>
                     </Columns>
                     <EditRowStyle BackColor="#2461BF" />
                     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#EFF3FB" />
                     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#F5F7FB" />
                     <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                     <SortedDescendingCellStyle BackColor="#E9EBEF" />
                     <SortedDescendingHeaderStyle BackColor="#4870BE" />
                 </asp:GridView>
               
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaguigSurveySystemConnectionString %>" SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>
               
             </div>
        </div>


        <div class="footer">
            
            <footer>
                &copy; <%: DateTime.Now.Year %> -Teamang Group</footer>
        </div>

    </form>

  
</body>

</html>
