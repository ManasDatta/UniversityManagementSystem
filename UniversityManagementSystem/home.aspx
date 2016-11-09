<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="UniversityManagementSystem.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Home | Auspicious International University-Bangladesh</title>
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
    .mySlides{
        top:24%;
        height:784px;

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
        <div class="slideshow">
            <img class="mySlides" src="images/signin.jpg" style="width: 100%"/>
            <img class="mySlides" src="images/slide1.jpg" style="width: 100%"/>
            <img class="mySlides" src="images/slide2.jpg" style="width: 100%"/>
            <img class="mySlides" src="images/slide3.jpg" style="width: 100%"/>
            <img class="mySlides" src="images/slide4.jpg" style="width: 100%"/>
        </div>

        <script>
            var myIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) { myIndex = 1 }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 5000); // Change image every 5 seconds
            }
        </script>

    </form>
</body>
</html>
