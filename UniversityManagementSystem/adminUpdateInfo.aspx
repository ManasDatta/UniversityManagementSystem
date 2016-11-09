<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateInfo.aspx.cs" Inherits="UniversityManagementSystem.updateInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Admin Home | Auspicious International University-Bangladesh</title>
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
        .details_area1
	   {
                overflow:auto;
				top:24%;				
				width: 98%;
				position: absolute;				
				opacity:.9;
                left: 1%;
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
		width: 10.7%;
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
                <asp:Button ID="Button2" class="button" runat="server" Text="+ Admin" OnClick="Button2_Click" CausesValidation="False" />
                <asp:Button ID="Button3" class="button" runat="server" Text="+ Faculty" OnClick="Button3_Click" CausesValidation="False" />
                <asp:Button ID="Button4" class="button" runat="server" Text="+ Student" OnClick="Button4_Click" CausesValidation="False" />
                <asp:Button ID="Button5" class="button" runat="server" Text="+ Schedule" OnClick="Button5_Click" CausesValidation="False" />
                <asp:Button ID="Button6" class="button" runat="server" Text="Update Info" OnClick="Button6_Click" CausesValidation="False" />
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
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <h2>**Update Information**</h2>        
                <asp:Button ID="Button36" class="button" runat="server" Text="General Information" OnClick="Button36_Click" Height="40px" Width="250px" /><br />
                <asp:Button ID="Button37" class="button" runat="server" Text="Admin Information" OnClick="Button37_Click" Height="40px" Width="250px" /><br />
                <asp:Button ID="Button38" class="button" runat="server" Text="Faculty Information" OnClick="Button38_Click" Height="40px" Width="250px"  /><br />
                <asp:Button ID="Button39" class="button" runat="server" Text="Student Information" OnClick="Button39_Click" Height="40px" Width="250px" /><br />
                <asp:Button ID="Button10" class="button" runat="server" Text="Account Information" OnClick="Button10_Click" Height="40px" Width="250px" /><br />
                <asp:Button ID="Button16" class="button" runat="server" OnClick="Button16_Click" Text="Schedule Information" Height="40px" Width="250px" />
            </asp:View>

            <asp:View ID="View2" runat="server">
                <asp:Button ID="Button11" class="button" runat="server" OnClick="Button11_Click" Text="Back" Height="40px" Width="250px" />
                <asp:Button ID="Button19" class="button" runat="server" OnClick="Button19_Click" Text="Show List" Height="40px" Width="250px" />
        <h2>**General Information**</h2>
        <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="250px"></asp:TextBox><br /><br />
        <asp:Button ID="Button31" class="button" runat="server" Text="Search" OnClick="Button31_Click" Height="40px" Width="250px" />
                <br />
                <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
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
                <asp:CommandField HeaderText="Options" ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" DeleteCommand="DELETE FROM [Information] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (@Id, @Name, @Address, @Email, @Phone, @Gender, @DOB, @BloodGroup, @Nationality, @Religion, @MaritalStatus)" SelectCommand="SELECT * FROM [Information] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Information] SET [Name] = @Name, [Address] = @Address, [Email] = @Email, [Phone] = @Phone, [Gender] = @Gender, [DOB] = @DOB, [BloodGroup] = @BloodGroup, [Nationality] = @Nationality, [Religion] = @Religion, [MaritalStatus] = @MaritalStatus WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="Nationality" Type="String" />
                <asp:Parameter Name="Religion" Type="String" />
                <asp:Parameter Name="MaritalStatus" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Id" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="Nationality" Type="String" />
                <asp:Parameter Name="Religion" Type="String" />
                <asp:Parameter Name="MaritalStatus" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource7" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
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
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT * FROM [Information] ORDER BY [Id]"></asp:SqlDataSource>
                <br />
            </asp:View>

            <asp:View ID="View3" runat="server">
                <asp:Button ID="Button12" class="button" runat="server" OnClick="Button12_Click" Text="Back"  Height="40px" Width="250px"/>
                <asp:Button ID="Button20" class="button" runat="server" OnClick="Button20_Click" Text="Show List" Height="40px" Width="250px" />
                <h2>**Admin Information**</h2>
                <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="250px"></asp:TextBox><br /><br />
        <asp:Button ID="Button32" class="button" runat="server" Text="Search" OnClick="Button32_Click"  Height="40px" Width="250px"/>
                
                <br />
                <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Admin Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="JoiningDate" HeaderText="Joining Date" SortExpression="JoiningDate" />
                <asp:CommandField HeaderText="Options" ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" DeleteCommand="DELETE FROM [Admin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Admin] ([Id], [JoiningDate]) VALUES (@Id, @JoiningDate)" SelectCommand="SELECT * FROM [Admin] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Admin] SET [JoiningDate] = @JoiningDate WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="JoiningDate" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="Id" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="JoiningDate" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource8" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Admin Id" ReadOnly="True" SortExpression="Id" />
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
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT [Id], [JoiningDate] FROM [Admin] ORDER BY [Id]"></asp:SqlDataSource>
                <br />
            </asp:View>

            <asp:View ID="View4" runat="server">
               <asp:Button ID="Button13" class="button" runat="server" OnClick="Button13_Click" Text="Back"  Height="40px" Width="250px"/>
               <asp:Button ID="Button21" class="button" runat="server" OnClick="Button21_Click" Text="Show List"  Height="40px" Width="250px"/>
                <h2>**Faculty Information**</h2>
                <asp:Label ID="Label3" runat="server" Text="ID"></asp:Label><br />
        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="250px" ></asp:TextBox><br /><br />
        <asp:Button ID="Button33" class="button" runat="server" Text="Search" OnClick="Button33_Click"  Height="40px" Width="250px"/>

                <br />
                <br />
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Faculty Id" ReadOnly="True" SortExpression="Id" />
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
                        <asp:BoundField DataField="JoiningDate" HeaderText="Joining Date" SortExpression="JoiningDate" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                        <asp:CommandField HeaderText="Options" ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" DeleteCommand="DELETE FROM [Faculty] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Faculty] ([Id], [JoiningDate], [Department], [Position], [School], [College], [Undergraduate], [Postgraduate], [PHD], [SchoolPassingYear], [CollegePassingYear], [UndergraduatePassingYear], [PostgraduatePassingYear], [PHDPassingYear]) VALUES (@Id, @JoiningDate, @Department, @Position, @School, @College, @Undergraduate, @Postgraduate, @PHD, @SchoolPassingYear, @CollegePassingYear, @UndergraduatePassingYear, @PostgraduatePassingYear, @PHDPassingYear)" SelectCommand="SELECT * FROM [Faculty] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Faculty] SET [JoiningDate] = @JoiningDate, [Department] = @Department, [Position] = @Position, [School] = @School, [College] = @College, [Undergraduate] = @Undergraduate, [Postgraduate] = @Postgraduate, [PHD] = @PHD, [SchoolPassingYear] = @SchoolPassingYear, [CollegePassingYear] = @CollegePassingYear, [UndergraduatePassingYear] = @UndergraduatePassingYear, [PostgraduatePassingYear] = @PostgraduatePassingYear, [PHDPassingYear] = @PHDPassingYear WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="String" />
                        <asp:Parameter Name="JoiningDate" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="Position" Type="String" />
                        <asp:Parameter Name="School" Type="String" />
                        <asp:Parameter Name="College" Type="String" />
                        <asp:Parameter Name="Undergraduate" Type="String" />
                        <asp:Parameter Name="Postgraduate" Type="String" />
                        <asp:Parameter Name="PHD" Type="String" />
                        <asp:Parameter Name="SchoolPassingYear" Type="String" />
                        <asp:Parameter Name="CollegePassingYear" Type="String" />
                        <asp:Parameter Name="UndergraduatePassingYear" Type="String" />
                        <asp:Parameter Name="PostgraduatePassingYear" Type="String" />
                        <asp:Parameter Name="PHDPassingYear" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox3" Name="Id" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="JoiningDate" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="Position" Type="String" />
                        <asp:Parameter Name="School" Type="String" />
                        <asp:Parameter Name="College" Type="String" />
                        <asp:Parameter Name="Undergraduate" Type="String" />
                        <asp:Parameter Name="Postgraduate" Type="String" />
                        <asp:Parameter Name="PHD" Type="String" />
                        <asp:Parameter Name="SchoolPassingYear" Type="String" />
                        <asp:Parameter Name="CollegePassingYear" Type="String" />
                        <asp:Parameter Name="UndergraduatePassingYear" Type="String" />
                        <asp:Parameter Name="PostgraduatePassingYear" Type="String" />
                        <asp:Parameter Name="PHDPassingYear" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource9" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Faculty Id" ReadOnly="True" SortExpression="Id" />
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
                        <asp:BoundField DataField="JoiningDate" HeaderText="Joining Date" SortExpression="JoiningDate" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
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
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" DeleteCommand="DELETE FROM [Faculty] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Faculty] ([Id], [JoiningDate], [Department], [Position], [School], [College], [Undergraduate], [Postgraduate], [PHD], [SchoolPassingYear], [CollegePassingYear], [UndergraduatePassingYear], [PostgraduatePassingYear], [PHDPassingYear]) VALUES (@Id, @JoiningDate, @Department, @Position, @School, @College, @Undergraduate, @Postgraduate, @PHD, @SchoolPassingYear, @CollegePassingYear, @UndergraduatePassingYear, @PostgraduatePassingYear, @PHDPassingYear)" SelectCommand="SELECT * FROM [Faculty] ORDER BY [Id]" UpdateCommand="UPDATE [Faculty] SET [JoiningDate] = @JoiningDate, [Department] = @Department, [Position] = @Position, [School] = @School, [College] = @College, [Undergraduate] = @Undergraduate, [Postgraduate] = @Postgraduate, [PHD] = @PHD, [SchoolPassingYear] = @SchoolPassingYear, [CollegePassingYear] = @CollegePassingYear, [UndergraduatePassingYear] = @UndergraduatePassingYear, [PostgraduatePassingYear] = @PostgraduatePassingYear, [PHDPassingYear] = @PHDPassingYear WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="String" />
                        <asp:Parameter Name="JoiningDate" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="Position" Type="String" />
                        <asp:Parameter Name="School" Type="String" />
                        <asp:Parameter Name="College" Type="String" />
                        <asp:Parameter Name="Undergraduate" Type="String" />
                        <asp:Parameter Name="Postgraduate" Type="String" />
                        <asp:Parameter Name="PHD" Type="String" />
                        <asp:Parameter Name="SchoolPassingYear" Type="String" />
                        <asp:Parameter Name="CollegePassingYear" Type="String" />
                        <asp:Parameter Name="UndergraduatePassingYear" Type="String" />
                        <asp:Parameter Name="PostgraduatePassingYear" Type="String" />
                        <asp:Parameter Name="PHDPassingYear" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="JoiningDate" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="Position" Type="String" />
                        <asp:Parameter Name="School" Type="String" />
                        <asp:Parameter Name="College" Type="String" />
                        <asp:Parameter Name="Undergraduate" Type="String" />
                        <asp:Parameter Name="Postgraduate" Type="String" />
                        <asp:Parameter Name="PHD" Type="String" />
                        <asp:Parameter Name="SchoolPassingYear" Type="String" />
                        <asp:Parameter Name="CollegePassingYear" Type="String" />
                        <asp:Parameter Name="UndergraduatePassingYear" Type="String" />
                        <asp:Parameter Name="PostgraduatePassingYear" Type="String" />
                        <asp:Parameter Name="PHDPassingYear" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </asp:View>

            <asp:View ID="View5" runat="server">
                <asp:Button ID="Button14" class="button" runat="server" OnClick="Button14_Click" Text="Back"  Height="40px" Width="250px"/>
                <asp:Button ID="Button22" class="button" runat="server" OnClick="Button22_Click" Text="Show List"  Height="40px" Width="250px"/>
                 <h2>**Student Information**</h2>
                <asp:Label ID="Label4" runat="server" Text="ID"></asp:Label><br />
        <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="250px"></asp:TextBox><br /><br />
        <asp:Button ID="Button34" class="button" runat="server" Text="Search" OnClick="Button34_Click"  Height="40px" Width="250px"/>
                 <br />
                 <br />
                 <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="Id" HeaderText="Student Id" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="FathersName" HeaderText="Fathers Name" SortExpression="FathersName" />
                         <asp:BoundField DataField="MothersName" HeaderText="Mothers Name" SortExpression="MothersName" />
                         <asp:BoundField DataField="GuardianPhone" HeaderText="Guardian Phone" SortExpression="GuardianPhone" />
                         <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
                         <asp:BoundField DataField="SchoolPassingYear" HeaderText="Passing Year" SortExpression="SchoolPassingYear" />
                         <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                         <asp:BoundField DataField="CollegePassingYear" HeaderText="Passing Year" SortExpression="CollegePassingYear" />
                         <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                         <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                         <asp:BoundField DataField="AdmissionDate" HeaderText="Admission Date" SortExpression="AdmissionDate" />
                         <asp:CommandField HeaderText="Options" ShowDeleteButton="True" ShowEditButton="True" />
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
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Student] ([Id], [FathersName], [MothersName], [GuardianPhone], [Department], [Semester], [AdmissionDate], [School], [College], [SchoolPassingYear], [CollegePassingYear]) VALUES (@Id, @FathersName, @MothersName, @GuardianPhone, @Department, @Semester, @AdmissionDate, @School, @College, @SchoolPassingYear, @CollegePassingYear)" SelectCommand="SELECT * FROM [Student] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Student] SET [FathersName] = @FathersName, [MothersName] = @MothersName, [GuardianPhone] = @GuardianPhone, [Department] = @Department, [Semester] = @Semester, [AdmissionDate] = @AdmissionDate, [School] = @School, [College] = @College, [SchoolPassingYear] = @SchoolPassingYear, [CollegePassingYear] = @CollegePassingYear WHERE [Id] = @Id">
                     <DeleteParameters>
                         <asp:Parameter Name="Id" Type="String" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="Id" Type="String" />
                         <asp:Parameter Name="FathersName" Type="String" />
                         <asp:Parameter Name="MothersName" Type="String" />
                         <asp:Parameter Name="GuardianPhone" Type="String" />
                         <asp:Parameter Name="Department" Type="String" />
                         <asp:Parameter Name="Semester" Type="String" />
                         <asp:Parameter Name="AdmissionDate" Type="String" />
                         <asp:Parameter Name="School" Type="String" />
                         <asp:Parameter Name="College" Type="String" />
                         <asp:Parameter Name="SchoolPassingYear" Type="String" />
                         <asp:Parameter Name="CollegePassingYear" Type="String" />
                     </InsertParameters>
                     <SelectParameters>
                         <asp:ControlParameter ControlID="TextBox4" Name="Id" PropertyName="Text" Type="String" />
                     </SelectParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="FathersName" Type="String" />
                         <asp:Parameter Name="MothersName" Type="String" />
                         <asp:Parameter Name="GuardianPhone" Type="String" />
                         <asp:Parameter Name="Department" Type="String" />
                         <asp:Parameter Name="Semester" Type="String" />
                         <asp:Parameter Name="AdmissionDate" Type="String" />
                         <asp:Parameter Name="School" Type="String" />
                         <asp:Parameter Name="College" Type="String" />
                         <asp:Parameter Name="SchoolPassingYear" Type="String" />
                         <asp:Parameter Name="CollegePassingYear" Type="String" />
                         <asp:Parameter Name="Id" Type="String" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                 <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource10" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="Id" HeaderText="Student Id" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="FathersName" HeaderText="Fathers Name" SortExpression="FathersName" />
                         <asp:BoundField DataField="MothersName" HeaderText="Mothers Name" SortExpression="MothersName" />
                         <asp:BoundField DataField="GuardianPhone" HeaderText="Guardian Phone" SortExpression="GuardianPhone" />
                         <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
                         <asp:BoundField DataField="SchoolPassingYear" HeaderText="Passing Year" SortExpression="SchoolPassingYear" />
                         <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                         <asp:BoundField DataField="CollegePassingYear" HeaderText="Passing Year" SortExpression="CollegePassingYear" />
                         <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                         <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                         <asp:BoundField DataField="AdmissionDate" HeaderText="Admission Date" SortExpression="AdmissionDate" />
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
                 <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT * FROM [Student] ORDER BY [Id]"></asp:SqlDataSource>
                 <br />
            </asp:View>

            <asp:View ID="View6" runat="server">
               <asp:Button ID="Button15" class="button" runat="server" OnClick="Button15_Click" Text="Back"  Height="40px" Width="250px"/>
               <asp:Button ID="Button23" class="button" runat="server" OnClick="Button23_Click" Text="Show List"  Height="40px" Width="250px"/>
                <h2>**Account Information**</h2>
                <asp:Label ID="Label5" runat="server" Text="ID"></asp:Label><br />
        <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="250px"></asp:TextBox><br /><br />
        <asp:Button ID="Button35" class="button" runat="server" Text="Search" OnClick="Button35_Click" Height="40px" Width="250px" />
                <br />
                <br />
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource5" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:CommandField HeaderText="Options" ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Id], [Password]) VALUES (@Id, @Password)" SelectCommand="SELECT * FROM [Users] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Users] SET [Password] = @Password WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox5" Name="Id" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource11" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT * FROM [Users] ORDER BY [Id]"></asp:SqlDataSource>
            </asp:View>

            <asp:View ID="View7" runat="server">
                <asp:Button ID="Button18" class="button" runat="server" OnClick="Button18_Click" Text="Back"  Height="40px" Width="250px"/>
                <asp:Button ID="Button24" class="button" runat="server" OnClick="Button24_Click" Text="Show List"  Height="40px" Width="250px"/>
                <h2>**Schedule Information**</h2>
                <asp:Label ID="Label6" runat="server" Text="ID"></asp:Label><br />
        <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="250px"></asp:TextBox><br /><br />
        <asp:Button ID="Button17" class="button" runat="server" Text="Search" OnClick="Button17_Click"  Height="40px" Width="250px" />
                
                <br />
                <br />
                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource6" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Course Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="CourseName" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Faculty" HeaderText="Faculty" SortExpression="Faculty" />
                        <asp:BoundField DataField="Timing" HeaderText="Timing" SortExpression="Timing" />
                        <asp:BoundField DataField="Room" HeaderText="Room" SortExpression="Room" />
                        <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                        <asp:CommandField HeaderText="Options" ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" DeleteCommand="DELETE FROM [Schedule] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Schedule] ([Id], [Name], [Timing], [Faculty], [Room], [Semester]) VALUES (@Id, @Name, @Timing, @Faculty, @Room, @Semester)" SelectCommand="SELECT * FROM [Schedule] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Schedule] SET [Name] = @Name, [Timing] = @Timing, [Faculty] = @Faculty, [Room] = @Room, [Semester] = @Semester WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Timing" Type="String" />
                        <asp:Parameter Name="Faculty" Type="String" />
                        <asp:Parameter Name="Room" Type="String" />
                        <asp:Parameter Name="Semester" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox6" Name="Id" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Timing" Type="String" />
                        <asp:Parameter Name="Faculty" Type="String" />
                        <asp:Parameter Name="Room" Type="String" />
                        <asp:Parameter Name="Semester" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource12" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Course Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="CourseName" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Faculty" HeaderText="Faculty" SortExpression="Faculty" />
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
                <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT * FROM [Schedule] ORDER BY [Id]"></asp:SqlDataSource>
                <br />
         </asp:View>

        </asp:MultiView>

        </div>
    </form>
</body>
</html>
