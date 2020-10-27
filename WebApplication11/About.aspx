<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication11.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body style="background-color: beige;">
	
<div class="slideshow-container" align="center" style="background-color: #d9b382;">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="about1.jpg" style="width:60%">
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="about2.jpg" style="width:60%">
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="about3.jpg" style="width:60%">
    <div class="text"></div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}
  slides[slideIndex-1].style.display = "block";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

<p  style="margin: 10px 10px 10px 10px"; >
<h2>About Us</h2>
<br>
The Hospital Management System is an integrated health care system providing exceptional medical care to our local and global communities.

Encompassing the HMS at India and eight hospital campuses in the New York metropolitan area, as well as a large, regional ambulatory footprint,HMS is internationally acclaimed for

its excellence in research, patient care, and education across a range of specialties. HMS was created from the combination of the HMS Medical Center and Continuum Health Partners, 

both agreed unanimously to combine the two entities in July 2013.

The Health System is designed to increase efficiencies and economies of scale; improve quality and outcomes; and expand access to advanced primary, specialty, and ambulatory care 

services throughout a wide clinical network. The Health System includes more than 7,200 physicians, including general practitioners and specialists, and 13 free-standing

joint-venture centers. Mount Sinai also features a robust and continually expanding network of multispecialty services, including more than 400 ambulatory practice locations

throughout the five boroughs of New York City, Westchester, and Long Island. With an extraordinary array of resources for 

the provision of compassionate, state-of-the-art care, the

Mount Sinai Health System is poised to identify and respond to the health-related needs of the diverse populations we serve.
<div align="left">
<h2> Locations we are available at</h2>
<br>


<li>California (Headquareters) </li>
<li>Chennai</li>
<li>Mumbai</li>
<li>Bangalore</li>
<li>Australia</li>
<li>Dublin</li>
</div>
We are still trying to reach out to many more places to help more people.
</p>

</body>
	<footer id="footer">
		<i class="icon fab fa-twitter fab-last"></i>
		<i class="icon fab fa-facebook-f fab-last"></i>
		<i class="icon fab fa-instagram fab-last"></i>
		<i class="icon fas fa-envelope fab-last"></i>

		<p>© Copyright HMS Hopital</p>

	</footer>


</asp:Content>
