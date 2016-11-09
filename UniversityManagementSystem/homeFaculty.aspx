<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeFaculty.aspx.cs" Inherits="UniversityManagementSystem.homeFaculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty List | Auspicious International University-Bangladesh</title>
   <style type="text/css">
	body	
	{
		margin:0 auto;
		background: url("images/background.jpg") no-repeat;
		background-size: auto;	
		font-family: 'Open Sans', sans-serif;
	}
    .name_area
	{				
		height: 15%;
		width: 100%;
		position: absolute;				
		background-color:#f1f1f1;
		opacity:.5;
		border-radius: 4px;
        left: -1px;
       }
    .details_area
	{		
        top:25%;		
		height: 75%;
		width: 100%;
		position: absolute;				
		border-radius: 4px;
        left: -1px;
       }
    .form_area
	{
		top:15%;				
		height: 6.3%;
		width: 100%;
		position: absolute;				
		background-color:#f1f1f1;
		opacity:.9;
		border-radius: 4px;
        left: -1px;
       }
	.form_inner_area
	{
        left:.1%;
		top:1%;
		height: 20%;
		width: 100%;
		position: absolute;
	}
	.button 
	{
		width: 19.6%;
		background-color: #4CAF50;
		color: white;
		padding: 14px 20px;
		margin: 3px 0;
		border: none;
		border-radius: 4px;
		cursor: pointer;
		
	}
	.button:hover 
	{
		background-color: #45a049;
	}
	
       .copyright {			
		height: 6%;
		width: 20%;
		position: fixed;				
		background-color:#f1f1f1;
		opacity:.5;
		border-radius: 4px;
		bottom: 1%;
		right: .5%;
		text-align: center;
	}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="name_area">
            <center><h1>AUSPICIOUS INTERNATIONAL UNIVERSITY - BANGLADESH</h1>
            <p>WHERE EXTREME CHILLERS ARE CREATED :P</p></center>
        </div>
        <div class="form_area">
            <div class="form_inner_area">
                &nbsp;<asp:Button ID="Button5" class="button" runat="server" Text="Home" OnClick="Button5_Click" />
                <asp:Button ID="Button1" class="button" runat="server" Text="About" OnClick="Button1_Click" />
                <asp:Button ID="Button2" class="button" runat="server" Text="Admission" OnClick="Button2_Click" />
                <asp:Button ID="Button3" class="button" runat="server" Text="Faculty List" OnClick="Button3_Click" />
                <asp:Button ID="Button4" class="button" runat="server" Text="Login" OnClick="Button4_Click" />
            </div>
        </div>

        <div class="details_area">
            <center><h2>FACULTY LIST</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Faculty Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Department" HeaderText="Department" />
                <asp:BoundField DataField="School" HeaderText="School" />
                <asp:BoundField DataField="College" HeaderText="College" />
                <asp:BoundField DataField="Undergraduate" HeaderText="Undergraduate" />
                <asp:BoundField DataField="Postgraduate" HeaderText="Postgraduate" />
                <asp:BoundField DataField="PHD" HeaderText="PHD" />
                <asp:BoundField DataField="Position" HeaderText="Position" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView></center>
        </div>

     <div class="copyright">
		&copy; 2016-
        <script type="text/javascript">
            now = new Date
            theYear = now.getYear()
            if (theYear < 1900)
                theYear = theYear + 1900
            document.write(theYear)
        </script>
        Team Auspicious <br />All Rights Reserved (v1.0)
	 </div>

    <div>
      
    </div>
    </form>
</body>
</html>
