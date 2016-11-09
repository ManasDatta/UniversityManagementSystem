<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeAdmission.aspx.cs" Inherits="UniversityManagementSystem.addmission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admission | Auspicious International University-Bangladesh</title>
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
		position:absolute;				
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
		position:absolute;			
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
		position:fixed;	
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
            <center><h2>ADMISSION</h2></center>
            <asp:Table ID="Table1" align="center" runat="server" BorderStyle="Solid" BorderWidth="1px">
                <asp:TableRow runat="server">
                    <asp:TableCell align="center" runat="server" ColumnSpan="2" BorderStyle="Solid" BorderWidth="1px"><h3>Admission Schedule for&nbsp;<strong>SPRING 2016 - 2017</strong></h3></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell align="right" runat="server" BorderStyle="Solid" BorderWidth="1px"><p>Admission Test: &nbsp</p></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px"><p>&nbsp November 10, 2016 (Thursday)</p></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell align="right" runat="server" BorderStyle="Solid" BorderWidth="1px"><p>&nbsp Form Collection Up to (Except Friday): &nbsp</p></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px"><p>&nbsp November  07, 2016 (Monday)(Except Friday) &nbsp</p></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell align="right" runat="server" BorderStyle="Solid" BorderWidth="1px"><p>Class Start: &nbsp</p></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px"><p>&nbsp January 22, 2017 (Sunday)</p></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />

            <center><h2>Admission Reqirements</h2></center>
            <asp:Table ID="Table2" align="center" runat="server" BorderStyle="Solid" BorderWidth="1px">
                <asp:TableRow runat="server">
                    <asp:TableCell align="left" runat="server" ColumnSpan="2" BorderStyle="Solid" BorderWidth="1px">
                        <p><strong>&nbsp For Undergraduate (CSE/EEE):</strong></p>
                        <ol style="list-style-type:lower-alpha;">
	                    <li>A total <strong>GPA of 6.00</strong> with a minimum <strong>GPA of 2.75</strong> in Science background.<strong> Math</strong> must be included at <strong>HSC level.</strong></li>
	                    <li>Minimum <strong>GPA 2.5</strong> (in both O and A Levels separately) with no grade lower than &lsquo;D&rsquo; among best <strong>5 subjects</strong> in O&#39; level and best <strong>2 subjects</strong> in A&#39; level<strong>. Math</strong> must be included at <strong>A&#39; level.</strong> (Scale: A=5, B=4, C=3, D=2 &amp; E=1)</li>
	                    <li>High School Diploma/International Baccalaureate with minimum grade B in Math<strong>.</strong></li>
	                    <li>GED result will not be accepted<strong>.</strong></li>
                        </ol>               
                    <p><strong>&nbsp Required Documents for Form Submission:</strong></p>
                    <ol>
	                <li>Attested Photocopy of all <strong>Board</strong> <strong>Mark Sheets</strong> and <strong>Testimonials / Certificates</strong>.</li>
	                <li><strong>Three copies of Recent Colored &amp; Clear Passport Sized Photographs.</strong></li>
	                <li>For O&rsquo;Level &amp;A&rsquo;Level Students, Attested Photocopy of Certificates/Hard copies (with cash in code).</li>
	                <li><strong>A&rsquo; Level appeared</strong> candidates are required to submit attested photocopy of <strong>A2</strong> <strong>Statement of Entry</strong> and Mark Sheets of their <strong>A&rsquo;S LEVEL Exam</strong>(with cash in code).</li>
	                <li><strong>Applicants in Freedom Fighter category&nbsp; are requested &nbsp;to submit </strong><strong>attested photocopy</strong> of &nbsp;<strong>(i)</strong> &ldquo;Provisional Certificate&rdquo; from Ministry of Liberation war affairs. <strong>(ii)</strong> Mukti Barta/Indian List/PM signed Certificate &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>(iii)</strong> Gazette &nbsp;<strong>(iv)</strong> &ldquo;National ID&rdquo; of the freedom fighter &amp; Birth Certificate / Death Certificate of the Freedom Fighter.</li>
                    </ol>
                    <p><strong>***Selected applicants in FF quota are requested to bring all these original papers during their admission.</strong></p>
                   </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
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
    </form>
</body>
</html>
