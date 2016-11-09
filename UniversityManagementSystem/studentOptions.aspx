<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentOptions.aspx.cs" Inherits="UniversityManagementSystem.studentOptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Home | Auspicious International University-Bangladesh</title>
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
                position: absolute;
				left: 37.5%;
				top:23%;				
				height: 75%;
				width: 350px;
				position: absolute;				
				background-color:#f1f1f1;
                resize:initial;
				opacity:.9;
       }
			.details_area2
			{
				top:2%;
				height: 200px;
				width: 800px;
				position: absolute;
				left: 50px;						
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

        <div class="details_area1">
        <div class="details_area2">
            <p>**Change Password</p>
        <asp:Label ID="Label1" runat="server" Text="Old Password:"></asp:Label> <br />
        <asp:TextBox ID="TextBox1" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br /><br />
        <asp:Label ID="Label13" runat="server" Text="New Password:"></asp:Label> <br />
        <asp:TextBox ID="TextBox2" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox2"></asp:RequiredFieldValidator><br /><br />
        <asp:Label ID="Label14" runat="server" Text="Confirm New Password:"></asp:Label> <br />
        <asp:TextBox ID="TextBox3" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*The password did not matched" ForeColor="Red" ValueToCompare="TextBox2" Display="Dynamic" ControlToValidate="TextBox3" ControlToCompare="TextBox2"></asp:CompareValidator><br /> <br />
        <asp:Button ID="Button10" class="button" runat="server" Text="Confirm" OnClick="Button10_Click" Height="40px" Width="250px"/>
        </div>
      </div>


    </form>
</body>
</html>
