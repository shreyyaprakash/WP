<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication11._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="Excellence">
		 <h2 class="exe">Centers Of Excellence</h2>
		 <p class="exe">Combining the best specialists and equipment to provide you nothing short of the best in healthcare</p>
    <div id="carouselExampleSlidesOnly" class="carousel slide " data-ride="carousel" data-interval="1500">

      <div class="carousel-inner">
        <div class="carousel-item active ">
					<div class="container">
				    <div class="row">
				      <div class=" one feat-box col-lg-4 col-md-12">
				<img src="https://img.icons8.com/dusk/100/000000/heart-with-pulse.png"/>
				    <h3 class="index-h3">Heart</h3>
				    </div>
				    <div class="one feat-box col-lg-4 col-md-12">
				<img class="" src="https://img.icons8.com/ios-filled/100/000000/spine.png"/>
				    <h3 class="index-h3">Spine</h3>
				  </div>
				  <div class="one feat-box col-lg-4 col-md-12">
				<img src="https://img.icons8.com/color/100/000000/knee-joint.png"/>
				    <h3 class="index-h3">Orthopedics</h3>
				  </div>
				</div>
			</div>
		</div>
        <div class="carousel-item ">
					<div class="container">
				    <div class="row">
				      <div class=" one feat-box col-lg-4 col-md-12">
				<img src="https://img.icons8.com/ultraviolet/100/000000/stomach.png"/>
				    <h3 class="index-h3">Gastrology</h3>
				    </div>
				    <div class="one feat-box col-lg-4 col-md-12">
				<img src="https://img.icons8.com/plasticine/100/000000/brain.png"/>
				    <h3 class="index-h3">Neurosciences</h3>
				  </div>
				  <div class="one feat-box col-lg-4 col-md-12">
				<img src="https://img.icons8.com/doodle/100/000000/ambulance.png"/>
				    <h3 class="index-h3">Emergency</h3>
				  </div>
				</div>
			</div>
      </div>
			<div class="carousel-item ">
				<div class="container">
					<div class="row">
						<div class=" one feat-box col-lg-4 col-md-12">
			<img src="https://img.icons8.com/bubbles/100/000000/diabetes.png"/>
					<h3 class="index-h3">Diabetes</h3>
					</div>
					<div class="one feat-box col-lg-4 col-md-12">
			<img src="https://img.icons8.com/plasticine/100/000000/organ-transplantation.png"/>
					<h3 class="index-h3">Transplants</h3>
				</div>
				<div class="one feat-box col-lg-4 col-md-12">
			<img src="https://img.icons8.com/dusk/100/000000/insulin-pen.png"/>
					<h3 class="index-h3">Preventive Medicines</h3>
				</div>
			</div>
		</div>
		</div>
       <a class="carousel-control-prev" href="#carouselExampleSlidesOnly" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>

      </a>
      <a class="carousel-control-next" href="#carouselExampleSlidesOnly" role="button" data-slide="next">
        <span class="carousel-control-next-icon"></span>

      </a>
    </div>
  </section>


<!-- WHY CHOOSE US -->

<section id="features">
	<h2>Why Choose HMS?</h2>
	<br>
	<br>
	<div class="container">
	<div class="row">
		<div class="feat-box col-lg-3 col-md-12">
<img class="icon" src="https://img.icons8.com/dusk/64/000000/doctor-female.png"/>
<br>
<br>
	<h3 class="index-h3">More experience</h3>
	<p>Every year, more than a million people come to HMS Clinic for care. Our highly specialized experts are deeply experienced in treating rare and complex conditions..</p>
	</div>
	<div class="feat-box col-lg-3 col-md-12">
<img class="icon" src="https://img.icons8.com/dusk/64/000000/checked-2.png"/>
<br>
<br>
	<h3 class="index-h3">The right answers</h3>
	<p>Successful treatment starts with an accurate diagnosis, and our experts take the time to get it right. A team of specialists will listen to your needs and evaluate your condition from every angle to make the very best plan for you.</p>
</div>
<div class="feat-box col-lg-3 col-md-12">
<img class="icon" src="https://img.icons8.com/dusk/64/000000/survival-bag.png"/>
<br>
<br>
	<h3 class="index-h3">Seamless care.</h3>
	<p>At HMS, every aspect of your care is coordinated and teams of experts work together to provide exactly the care you need. What might take months elsewhere can often be done in days here.</p>
</div>
<div class="feat-box col-lg-3 col-md-12">
<img class="icon" src="https://img.icons8.com/ios-filled/64/000000/yellow-team.png"/>
<br>
<br>
	<h3 class="index-h3">Unparalleled expertise</h3>
	<p>HMS Clinic experts are some of the best in the world. In the Indian News & India's Report rankings of top hospitals, HMS Clinic is consistently ranked among the top hospitals in the nation.</p>
</div>
</div>

</div>
</section>




	<!-- Footer -->

	<footer id="footer">
		<i class="icon fab fa-twitter fab-last"></i>
		<i class="icon fab fa-facebook-f fab-last"></i>
		<i class="icon fab fa-instagram fab-last"></i>
		<i class="icon fas fa-envelope fab-last"></i>

		<p>© Copyright HMS Hopital</p>

	</footer>



</asp:Content>
