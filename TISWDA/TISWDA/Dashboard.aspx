<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="TISWDA.Dashboard" %>

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
    div.dashboard {
       
        padding-top:5px;
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
    #DropDownList1{
       float:right;
       
    }

 
   
    /* Float four columns side by side */
.column {
  float: left;
  width: 18%;
  padding: 0 10px;
     padding-bottom:10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 0;
            width: 1117px;
}

/* Clear floats after the columns */
.row:after {
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 25%;
    display: block;
    margin-bottom: 5px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding:16px;
  text-align: center;
  background-color: #f1f1f1;
}

.overview{
    margin:0;
    width:100%;
    padding-top:100px;
}
   
  


   
    </style>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.load('current', { packages: ['corechart', 'line'] });
        </script>
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
      
         <div class="content" style="width: auto; height:auto; padding-top:20px; margin-top: 60px; height: 1206px;">
         
            <h3 >Total population per baranggay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbltotal" runat="server" Text="no.total"></asp:Label></h3>
  <div class="row">
  <div class="column">
    <div class="card">
      <h3><asp:Label runat="server" ID="no1" Text="No.1"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label28" Text="Bagumbayan"></asp:Label></p>
    </div>
  </div>

  <div class="column">
    <div class="card">
     <h3><asp:Label runat="server" ID="no2" Text="No.2"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label29" Text="Bambang"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3><asp:Label runat="server" ID="no3" Text="No.3"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label30" Text="Calzada"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3><asp:Label runat="server" ID="no4" Text="No.4"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label31" Text="Hagonoy"></asp:Label></p>
    </div>
  </div>
       <div class="column">
    <div class="card">
     <h3><asp:Label runat="server" ID="no5" Text="No.5"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label32" Text="Ibayo Tipas"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3><asp:Label runat="server" ID="no6" Text="No.6"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label33" Text="Ligid Tipas"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
     <h3><asp:Label runat="server" ID="no7" Text="No.7"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label34" Text="Lower Bicutan"></asp:Label></p>
    </div>
  </div>

       <div class="column">
    <div class="card">
 <h3><asp:Label runat="server" ID="no8" Text="No.8"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label35" Text="New Lower Bicutan"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3><asp:Label runat="server" ID="no9" Text="No.9"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label36" Text="Napindan"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
 <h3><asp:Label runat="server" ID="no10" Text="No.10"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label37" Text="Palingon"></asp:Label></p>
    </div>
  </div>

       <div class="column">
    <div class="card">
    <h3><asp:Label runat="server" ID="no11" Text="No.11"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label38" Text="San Miguel"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
    <h3><asp:Label runat="server" ID="no12" Text="No.12"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label39" Text="Santa Ana"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
     <h3><asp:Label runat="server" ID="no13" Text="No.13"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label40" Text="Tuktukan"></asp:Label></p>
    </div>
  </div>
       <div class="column">
    <div class="card">
   <h3><asp:Label runat="server" ID="no14" Text="No.4"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label41" Text="Ususan"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
 <h3><asp:Label runat="server" ID="no15" Text="No.15"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label42" Text="Wawa"></asp:Label></p>
    </div>
  </div>

        <div class="column">
    <div class="card">
    <h3><asp:Label runat="server" ID="no01" Text="No.1"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label44" Text="Central Bicutan"></asp:Label></p>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h3><asp:Label runat="server" ID="no02" Text="No.2"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label43" Text="Central Signal Village"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
  <h3><asp:Label runat="server" ID="no03" Text="No.3"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label45" Text="Fort Bonifacio"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
    <h3><asp:Label runat="server" ID="no04" Text="No.4"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label46" Text="Katuparan"></asp:Label></p>
    </div>
  </div>
       <div class="column">
    <div class="card">
 <h3><asp:Label runat="server" ID="no05" Text="No.5"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label47" Text="Maharlika Village"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
<h3><asp:Label runat="server" ID="no06" Text="No.6"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label48" Text="North Daang Hari"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
   <h3><asp:Label runat="server" ID="no07" Text="No.7"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label49" Text="North Signal Village"></asp:Label></p>
    </div>
  </div>

       <div class="column">
    <div class="card">
      <h3><asp:Label runat="server" ID="no08" Text="No.8"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label50" Text="Pinagsama"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
 <h3><asp:Label runat="server" ID="no09" Text="No.9"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label51" Text="South Daang Hari"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
   <h3><asp:Label runat="server" ID="no010" Text="No.10"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label52" Text="South Signal Village"></asp:Label></p>
    </div>
  </div>

       <div class="column">
    <div class="card">
      <h3><asp:Label runat="server" ID="no011" Text="No.11"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label53" Text="Bagong Tanyag"></asp:Label></p>
    </div>
  </div>
 
  <div class="column">
    <div class="card">
 <h3><asp:Label runat="server" ID="no012" Text="No.12"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label54" Text="Upper Bicutan"></asp:Label></p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
    <h3><asp:Label runat="server" ID="no013" Text="No.13"></asp:Label></h3>
      <p><asp:Label runat="server" ID="Label55" Text="Western Bicutan"></asp:Label></p>
    </div>
  </div>
</div>

        
    
     


            <div id="overview" style="width:600px;  ">  
                 <h3 style="margin-bottom:0; padding-bottom:0;">Overview</h3>
          <h5 style="margin:0; padding:0;">	&nbsp;&nbsp;&nbsp;&nbsp;Statistics, data analytics visualization, big data analytics, etc.</h5>
             


            <div>
                <asp:Literal ID="lt" runat="server" ></asp:Literal>
                <div id="chart_div" style="width:auto; height: 500px;"> </div>
            </div>


        </div>
      
        </div>
        <div class="footer">
            <footer>
                &copy; <%: DateTime.Now.Year %> -Teamang Group</footer>
        </div>

    </form>

  
</body>

</html>