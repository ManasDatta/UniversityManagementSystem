<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminAddStudent.aspx.cs" Inherits="UniversityManagementSystem.adminAddStudent" %>

<%@ Register Src="~/control/calendarControl.ascx" TagPrefix="uc1" TagName="calendarControl" %>
<%@ Register Src="~/control/yearControl.ascx" TagPrefix="uc2" TagName="yearControl" %>

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

<div class="details_area1">
    <div class="details_area2">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" >
            <asp:View ID="View1" runat="server">
                <p>+ Add New Student</p>
        <asp:Label ID="Label1" runat="server" Text="Student Id:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxId" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxId" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Invalid Format (ex: 12-34567-2)" ForeColor="Red" ControlToValidate="TextBoxId" Display="Dynamic" ValidationExpression="[0-9]{2}-[0-9]{5}-[1-2]"></asp:RegularExpressionValidator><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxName" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBoxName"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="*Only letters, white space, dots and hiphens are allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z .-]*$" ControlToValidate="TextBoxName" Display="Dynamic"></asp:RegularExpressionValidator><br /><br />
        <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxAddress" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBoxAddress"></asp:RequiredFieldValidator><br /><br />
        <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxEmail" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Invalid Email" ForeColor="Red" ControlToValidate="TextBoxEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator><br /><br />
        <asp:Label ID="Label5" runat="server" Text="Phone:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxPhone" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxPhone" Display="Dynamic" ID="RequiredFieldValidator5"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*Invaid Phone" ForeColor="Red" ValidationExpression="^(?:\+?88)?01[15-9]\d{8}$" ControlToValidate="TextBoxPhone" Display="Dynamic"></asp:RegularExpressionValidator><br /><br />

        <asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label> <br />
        <asp:DropDownList ID="DropDownListGender" runat="server" Height="30px" Width="250px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList><br /><br />
        <asp:Label ID="Label7" runat="server" Text="Date of Birth:"></asp:Label> <br />
        <uc1:calendarControl runat="server" id="calendarControl" /><br /><br />
        <asp:Button ID="Button10" class="button" runat="server" Text="Next" OnClick="Button10_Click" Height="40px" Width="250px" />
        </asp:View>

        <asp:View ID="View2" runat="server">
        <asp:Label ID="Label8" runat="server" Text="Blood Group:"></asp:Label> <br />
        <asp:DropDownList ID="DropDownListBloodGroup" runat="server" Height="30px" Width="250px">
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropDownList><br /><br />
        <asp:Label ID="Label9" runat="server" Text="Nationality:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxNationality" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxNationality" Display="Dynamic"></asp:RequiredFieldValidator> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="*Only letters and white space are allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$" ControlToValidate="TextBoxNationality" Display="Dynamic"></asp:RegularExpressionValidator><br /><br />
        <asp:Label ID="Label10" runat="server" Text="Religion:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxReligion" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxReligion" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="*Only letters and white space are allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$" ControlToValidate="TextBoxReligion" Display="Dynamic"></asp:RegularExpressionValidator><br /><br />
        <asp:Label ID="Label11" runat="server" Text="Marital Status:"></asp:Label> <br />
        <asp:DropDownList ID="DropDownListMaritalStatus" runat="server" Height="30px" Width="250px">
            <asp:ListItem>Married</asp:ListItem>
            <asp:ListItem>Unmarried</asp:ListItem>
            <asp:ListItem>Divorced</asp:ListItem>
        </asp:DropDownList>
                <br />
            <br />
        <asp:Label ID="Label12" runat="server" Text="Father's Name:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxFathersName" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxFathersName" Display="Dynamic"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="*Only letters, white space, dots and hiphens are allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z .-]*$" ControlToValidate="TextBoxFathersName" Display="Dynamic"></asp:RegularExpressionValidator><br /><br />
        <asp:Label ID="Label13" runat="server" Text="Mother's Name:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxMothersName" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxMothersName" Display="Dynamic"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="*Only letters, white space, dots and hiphens are allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z .-]*$" ControlToValidate="TextBoxMothersName" Display="Dynamic"></asp:RegularExpressionValidator><br /><br />
        <asp:Label ID="Label14" runat="server" Text="Guardian Phone:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxGuardianPhone" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxGuardianPhone" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*Invaid Phone" ForeColor="Red" ValidationExpression="^(?:\+?88)?01[15-9]\d{8}$" ControlToValidate="TextBoxGuardianPhone" Display="Dynamic"></asp:RegularExpressionValidator><br /><br />      
        <asp:Button ID="Button11" class="button" runat="server" Text="Back" OnClick="Button11_Click" Height="40px" Width="250px" CausesValidation="False" /><br />
        <asp:Button ID="Button12" class="button" runat="server" Text="Next" OnClick="Button12_Click" Height="40px" Width="250px" />
        </asp:View>

        <asp:View ID="View3" runat="server">
        <asp:Label ID="Label18" runat="server" Text="School:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxSchool" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxSchool" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="*Only letters, white space, dots and hiphens are allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z .-]*$" ControlToValidate="TextBoxSchool" Display="Dynamic"></asp:RegularExpressionValidator><br /><br />
        <asp:Label ID="Label25" runat="server" Text="School Passing Year:"></asp:Label> <br />
        <uc2:yearControl runat="server" id="yearControl1" /><br /><br />

        <asp:Label ID="Label19" runat="server" Text="College:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxCollege" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxCollege" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="*Only letters, white space, dots and hiphens are allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z .-]*$" ControlToValidate="TextBoxCollege" Display="Dynamic"></asp:RegularExpressionValidator><br /><br />
        <asp:Label ID="Label21" runat="server" Text="College Passing Year:"></asp:Label> <br />
        <uc2:yearControl runat="server" id="yearControl2" /><br /><br />
            <asp:Label ID="Label15" runat="server" Text="Department:"></asp:Label> <br />
        <asp:DropDownList ID="DropDownListDepartment" runat="server" Height="30px" Width="250px">
            <asp:ListItem>CSE</asp:ListItem>
            <asp:ListItem>EEE</asp:ListItem>
        </asp:DropDownList><br /><br />
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
        </asp:DropDownList><br /><br />
        <asp:Label ID="Label17" runat="server" Text="Addmission Date:"></asp:Label> <br />
        <uc1:calendarControl runat="server" id="calendarControl1" /> <br /> <br />
            <asp:Button ID="Button13" class="button" runat="server" Text="Back" OnClick="Button13_Click" Height="40px" Width="250px" CausesValidation="False" /><br />
            <asp:Button ID="Button14" class="button" runat="server" Text="Next" OnClick="Button14_Click" Height="40px" Width="250px" />
            </asp:View>

          <asp:View ID="View4" runat="server">
        
        <asp:Label ID="Label20" runat="server" Text="Password:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxPassword" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*Required Field" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBoxPassword"></asp:RequiredFieldValidator><br /><br />
        <asp:Label ID="Label22" runat="server" Text="Confirm Password:"></asp:Label> <br />
        <asp:TextBox ID="TextBoxConfirmPassword" runat="server" BorderWidth="1px" Height="25px" Width="250px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*Required Field" ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBoxConfirmPassword"></asp:RequiredFieldValidator>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*The password did not matched" ForeColor="Red" ValueToCompare="TextBoxPassword" Display="Dynamic" ControlToValidate="TextBoxConfirmPassword" ControlToCompare="TextBoxPassword"></asp:CompareValidator><br /> <br />
              <asp:Button ID="Button15" class="button" runat="server" Text="Back" OnClick="Button15_Click" Height="40px" Width="250px" CausesValidation="False" /><br />
              <asp:Button ID="Button16" class="button" runat="server" Text="Confirm" OnClick="Button16_Click" Height="40px" Width="250px" />
    </asp:View>
            </asp:MultiView>
    </div>
        </div>
    </form>
</body>
</html>
