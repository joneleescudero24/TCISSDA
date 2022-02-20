<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditInformation.aspx.cs" Inherits="TISWDA.EditInformation" %>

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
        left:10px;
        bottom:0;
        width: 100%;
        background-color: indianred;
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
        <div class="content" style=" height:auto;width:auto; padding-right:50px; padding-bottom:25px; padding-top:20px; margin-top: 60px;">
        <h1>This Is Edit Information</h1>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaguigSurveySystemConnectionString %>" SelectCommand="SELECT * FROM [Barangay]"></asp:SqlDataSource>
            
            <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
            
            <asp:GridView ID="gvData" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="605px" AutoGenerateColumns="False" OnRowCancelingEdit="gvData_RowCancelingEdit" OnRowEditing="gvData_RowEditing" OnRowUpdating="gvData_RowUpdating" OnSorting="gvData_Sorting" >
                 
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:TemplateField HeaderText="Barangay_id" SortExpression="Barangay_id">
                         <EditItemTemplate>
                             <asp:Label ID="Label25" runat="server" Text='<%# Eval("Barangay_id") %>'></asp:Label>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Barangay_id") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Barangay_Districts" SortExpression="Barangay_Districts">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Barangay_Districts") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("Barangay_Districts") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Employment" SortExpression="Employment">
                          <EditItemTemplate>
                             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Employment") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("Employment") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p01" SortExpression="p01">
                          <EditItemTemplate>
                             <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("p01") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label4" runat="server" Text='<%# Eval("p01") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p02" SortExpression="p02">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("p02") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label5" runat="server" Text='<%# Eval("p02") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p03" SortExpression="p03">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("p03") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label6" runat="server" Text='<%# Eval("p03") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p04" SortExpression="p04">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("p04") %>'></asp:TextBox>
                         </EditItemTemplate>
                          <ItemTemplate>
                             <asp:Label ID="Label7" runat="server" Text='<%# Eval("p04") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p05" SortExpression="p05">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("p05") %>'></asp:TextBox>
                         </EditItemTemplate>
                          <ItemTemplate>
                             <asp:Label ID="Label8" runat="server" Text='<%# Eval("p05") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p06" SortExpression="p06">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox8" runat="server" Text='<%# Eval("p06") %>'></asp:TextBox>
                         </EditItemTemplate>
                          <ItemTemplate>
                             <asp:Label ID="Label9" runat="server" Text='<%# Eval("p06") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p07" SortExpression="p07"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox9" runat="server" Text='<%# Eval("p07") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label10" runat="server" Text='<%# Eval("p07") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p08" SortExpression="p08"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox10" runat="server" Text='<%# Eval("p08") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label11" runat="server" Text='<%# Eval("p08") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p09" SortExpression="p09">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox11" runat="server" Text='<%# Eval("p09") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label12" runat="server" Text='<%# Eval("p09") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p010" SortExpression="p010">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox12" runat="server" Text='<%# Eval("p010") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label13" runat="server" Text='<%# Eval("p010") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p011"  SortExpression="p011"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox13" runat="server" Text='<%# Eval("p011") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label14" runat="server" Text='<%# Eval("p011") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p012" SortExpression="p012"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox14" runat="server" Text='<%# Eval("p012") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label15" runat="server" Text='<%# Eval("p012") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p013" SortExpression="p013">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox15" runat="server" Text='<%# Eval("p013") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label16" runat="server" Text='<%# Eval("p013") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p013a" SortExpression="p013a"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox16" runat="server" Text='<%# Eval("p013a") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label17" runat="server" Text='<%# Eval("p013a") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p013b" SortExpression="p013b"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox17" runat="server" Text='<%# Eval("p013b") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label18" runat="server" Text='<%# Eval("p013b") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p013c" SortExpression="p013c"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox18" runat="server" Text='<%# Eval("p013c") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label19" runat="server" Text='<%# Eval("p013c") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p013d" SortExpression="p013d"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox19" runat="server" Text='<%# Eval("p013d") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label20" runat="server" Text='<%# Eval("p013d") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p013e" SortExpression="p013e"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox20" runat="server" Text='<%# Eval("p013e") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label21" runat="server" Text='<%# Eval("p013e") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p013f" SortExpression="p013f"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox21" runat="server" Text='<%# Eval("p013f") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label22" runat="server" Text='<%# Eval("p013f") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p014" SortExpression="p014"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox22" runat="server" Text='<%# Eval("p014") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label23" runat="server" Text='<%# Eval("p014") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p016" SortExpression="p016"> 
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox23" runat="server" Text='<%# Eval("p016") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label24" runat="server" Text='<%# Eval("p016") %>'></asp:Label>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="p016course" SortExpression="p016course">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox24" runat="server" Text='<%# Eval("p016course") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label25" runat="server" Text='<%# Eval("p016course") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Edit"> 
                         <EditItemTemplate>
                             <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update">Update</asp:LinkButton>
                             &nbsp;
                             <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                         </ItemTemplate>

                     </asp:TemplateField>
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
        </div>

        <div class="footer">
            
            <footer>
                &copy; <%: DateTime.Now.Year %> -Teamang Group</footer>
        </div>

    </form>

  
</body>

</html>
