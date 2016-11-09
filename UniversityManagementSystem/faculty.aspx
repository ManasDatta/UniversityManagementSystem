<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faculty.aspx.cs" Inherits="UniversityManagementSystem.faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty Home | Auspicious International University-Bangladesh</title>
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
		top:1%;
		height: 20%;
		width: 100%;
		position: absolute;
	}
     .details_area1
	   {
                overflow:auto;
				top:24%;				
				width: 98%;
                height: 76%;
				position: absolute;				
				opacity:.9;
                left: 1%;
       }
     .schedule
	   {
                overflow:auto;
				top:10%;
                height: 76%;				
				width: 48%;
				position: absolute;				
				opacity:.9;
                left: 1%;
       }
     .student
	   {
                overflow:auto;
				top:10%;				
				width: 48%;
                height: 76%;
				position: absolute;				
				opacity:.9;
                left: 51%;
       }
	.button 
	{
		width: 24.5%;
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
                &nbsp;
                <asp:Button ID="Button1" class="button" runat="server" Text="Home" OnClick="Button1_Click" CausesValidation="False" />
                <asp:Button ID="Button7" class="button" runat="server" Text="Options" OnClick="Button7_Click" CausesValidation="False" />
                <asp:Button ID="Button8" class="button" runat="server" Text="Profile" OnClick="Button8_Click" CausesValidation="False" />
                <asp:Button ID="Button9" class="button" runat="server" Text="Logout" OnClick="Button9_Click" CausesValidation="False" />
            </div>
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

     <div class="details_area1" align="center">
         <div class="schedule">
             <h2>**Your Course Information**</h3>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="Id" HeaderText="Course Id" ReadOnly="True" SortExpression="Id" />
                     <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                     <asp:BoundField DataField="Timing" HeaderText="Timing" SortExpression="Timing" />
                     <asp:BoundField DataField="Room" HeaderText="Room" SortExpression="Room" />
                     <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
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
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT [Id], [CourseName], [Timing], [Room], [Semester] FROM [Schedule] WHERE ([Faculty] = @Faculty)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Faculty" SessionField="username" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>

         </div>
         <div class="student">
             <h2>**Student Information**</h2>
            <asp:Label ID="Label16" runat="server" Text="Semester:"></asp:Label> <br />
            <asp:DropDownList ID="DropDownListSemester" runat="server" Height="30px" Width="250px">
            <asp:ListItem>1st</asp:ListItem>
            <asp:ListItem>2nd</asp:ListItem>
            <asp:ListItem>3rd</asp:ListItem>
            <asp:ListItem>4th</asp:ListItem>
            <asp:ListItem>5th</asp:ListItem>
            <asp:ListItem>6th</asp:ListItem>
            <asp:ListItem>7th</asp:ListItem>
            <asp:ListItem>8th</asp:ListItem>
        </asp:DropDownList><br />
             <asp:Label ID="Label15" runat="server" Text="Department:"></asp:Label> <br />
             <asp:DropDownList ID="DropDownListDepartment" runat="server" Height="30px" Width="250px">
            <asp:ListItem>CSE</asp:ListItem>
            <asp:ListItem>EEE</asp:ListItem>
        </asp:DropDownList><br />
             <br />
             <asp:Button ID="Button2" class="button" runat="server" Text="View Student" Height="40px" Width="250px" OnClick="Button2_Click" />
            <br /><br />
             <asp:Label ID="LabelNoStudent" runat="server" ForeColor="Red"></asp:Label>
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="Id" HeaderText="Student Id" />
                     <asp:BoundField DataField="Name" HeaderText="Name" />
                     <asp:BoundField DataField="Email" HeaderText="Email" />
                     <asp:BoundField DataField="GuardianPhone" HeaderText="Guardian Phone" />
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
             </asp:GridView>
         </div>

      </div>

    </form>
</body>
</html>
