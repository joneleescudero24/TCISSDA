<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewInformation.aspx.cs" Inherits="TISWDA.ViewInformation" %>

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
   position:fixed;
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
        <div class="content" style="height:auto; width: auto; padding-top:20px; padding-bottom:50px; margin-top: 60px; padding-bottom:25px;padding-left:25px;">
       <div style="padding-bottom:15px;"> <h3>View Information</h3>
           
           </div>
             <asp:GridView ID="gvData" runat="server" 
                 CellPadding="4" ForeColor="#333333" GridLines="None" >
                 <AlternatingRowStyle BackColor="White" />
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
        </div>

       <div class="footer">
            
            <footer>
                &copy; <%: DateTime.Now.Year %> -Teamang Group</footer>
        </div>

    </form>

  
</body>

</html>
