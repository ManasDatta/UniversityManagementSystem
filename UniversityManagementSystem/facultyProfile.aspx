<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facultyProfile.aspx.cs" Inherits="UniversityManagementSystem.facultyProfile" %>

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
				position: absolute;				
				opacity:.9;
                left: 1%;
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

            <h2>**Profile Information**</h2>
            <br />
            <h3>**General Information**</h3>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" SortExpression="BloodGroup" />
                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                    <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                    <asp:BoundField DataField="MaritalStatus" HeaderText="Marital Status" SortExpression="MaritalStatus" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus] FROM [Information] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Id" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
            <h3>**Educational Information**</h3>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
                    <asp:BoundField DataField="SchoolPassingYear" HeaderText="Passing Year" SortExpression="SchoolPassingYear" />
                    <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                    <asp:BoundField DataField="CollegePassingYear" HeaderText="Passing Year" SortExpression="CollegePassingYear" />
                    <asp:BoundField DataField="Undergraduate" HeaderText="Undergraduate" SortExpression="Undergraduate" />
                    <asp:BoundField DataField="UndergraduatePassingYear" HeaderText="Passing Year" SortExpression="UndergraduatePassingYear" />
                    <asp:BoundField DataField="Postgraduate" HeaderText="Postgraduate" SortExpression="Postgraduate" />
                    <asp:BoundField DataField="PostgraduatePassingYear" HeaderText="Passing Year" SortExpression="PostgraduatePassingYear" />
                    <asp:BoundField DataField="PHD" HeaderText="PHD" SortExpression="PHD" />
                    <asp:BoundField DataField="PHDPassingYear" HeaderText="Passing Year" SortExpression="PHDPassingYear" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT [School], [College], [Undergraduate], [Postgraduate], [PHD], [SchoolPassingYear], [CollegePassingYear], [UndergraduatePassingYear], [PostgraduatePassingYear], [PHDPassingYear] FROM [Faculty] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Id" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
            <h3>**Academic Information**</h3>

            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Faculty Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                    <asp:BoundField DataField="JoiningDate" HeaderText="Joining Date" SortExpression="JoiningDate" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" DeleteCommand="DELETE FROM [Faculty] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Faculty] ([Id], [JoiningDate], [Department], [Position]) VALUES (@Id, @JoiningDate, @Department, @Position)" SelectCommand="SELECT [Id], [JoiningDate], [Department], [Position] FROM [Faculty] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Faculty] SET [JoiningDate] = @JoiningDate, [Department] = @Department, [Position] = @Position WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="JoiningDate" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Position" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="Id" SessionField="username" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="JoiningDate" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Position" Type="String" />
                    <asp:Parameter Name="Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </form>
</body>
</html>
