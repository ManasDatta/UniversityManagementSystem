<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeAbout.aspx.cs" Inherits="UniversityManagementSystem.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About | Auspicious International University-Bangladesh</title>
  
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
            <center><h2>INFORMATION</h2></center>
            <asp:Table ID="Table2" align="center" runat="server" BorderStyle="Solid" BorderWidth="1px">
                <asp:TableRow runat="server">
                    <asp:TableCell align="left" runat="server" ColumnSpan="2" BorderStyle="Solid" BorderWidth="1px">
                        <h3>&nbsp Overview of Auspicious International University-Bangladesh (AIUB) </h3>
                        <ol style="list-style-type:disc;">
                            <li>
                                <p> AUSPICIOUS INTERNATIONAL UNIVERSITY - BANGLADESH (AIUB) is a government approved private university founded in 2016. 
                                The university is an independent organization with its own Board of Trustees.</p>
                            </li>
                        </ol>
            
            <h3>&nbsp Vision</h3>
              <ol style="list-style-type:disc;">
                 <li>
            <p> AUSPICIOUS INTERNATIONAL UNIVERSITY-BANGLADESH (AIUB) envisions promoting professionals and excellent leadership catering to the technological progress and development needs of the country.</p>
                  </li>
            </ol>

            <h3>&nbsp Mission</h3>
            <ol style="list-style-type:disc;">
                <li>
                    <p> AUSPICIOUS INTERNATIONAL UNIVERSITY-BANGLADESH (AIUB) is committed to provide quality and excellent computer-based academic programs responsive to the emerging challenges of the time. 
                It is dedicated to nurture and produce competent world class professional imbued with strong sense of ethical values ready to face the competitive world of arts, business, science, social science and technology.</p>
                </li>
            </ol>
            <h3>&nbsp Contact Us</h3>
            <ol style="list-style-type:disc;">
                <li>
                    <p>Address: House 83/B, Road 4, Kemal Ataturk Avenue Banani, Dhaka 1213, Bangladesh <br />
                    Cell: +8801672919211, +8801681999891 <br />
                    Email: pappubd007@gmail.com. manas.aiub.cse@gmail.com<br />
                    Website: www.aiub.edu</p>
                </li>
            </ol>
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
