<!--------------------------------------------------------------------
----------------------------------------------------------------------

                        Manobandhan Upgrade Page
            
-----------------------------------------------------------------------
----------------------------------------------------------------------->



<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
  <title>Manobandhan</title>
<link rel="shortcut icon" href="images/logo/Mano1.png" type="image/x-icon" />    
    <link href="css/temp.css" rel="stylesheet" type="text/css"/>    
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="css/home.css" rel="stylesheet" type="text/css"/>
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="css/bootstrap-3.1.1.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>    
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.flexisel.js"></script>
        <script src="js/bootstrap.min.js"></script> 
        <script src="js/login1.js"></script>      
</head>


<style>
* {
  box-sizing: border-box;
}
.banner {
  position: relative;
  
  margin: 0 auto;
 
}

.banner img {vertical-align: middle;}


.banner .content {
  position: absolute;
  bottom: 0;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
  margin-bottom: 68px;
}
.profile-picture {
	border-radius: 100%;
	overflow: hidden;
	-webkit-box-sizing: content-box;
  	-moz-box-sizing: content-box;
  	box-sizing: content-box;	
}
	.small-profile-picture {
		border: 2px solid #50597b;
		width: 40px;
		height: 40px;
	}

	.big-profile-picture {
		margin: 0 auto;		
		border: 5px solid #50597b;
		width: 150px;
		height: 150px;
        
	}
    
.nav-tabs > li > a, 
.nav-tabs > li > a:hover, 
.nav-tabs > li > a:focus, 
.nav-tabs > li.active > a, 
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  border: none;
  border-radius: 0;
  background-color:#ffa417;
}    
</style>
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/popup.css" rel="stylesheet" type="text/css">
	<script>
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
		});
	});
	</script>
<jsp:include page="Header.jsp"/>
<%
    HttpSession hs = request.getSession();
    String role    = session.getValue("user").toString();
    System.out.println("Manobandhan Profile Page"+role);

%>
<body>
	
	<!---------------------header,Menu----------------------------------------------------------->
         
<!---------------------------Content mid------------------------------------------------------->
               
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="profile.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page"><h3>Upgrade</h3></li>
     </ul>
   </div>
   <div class="col-md-3 pricing-table">
	  <div class="pricing-table-grid">
		<h3><span class="dollar">Rs.</span>1100<br><span class="month1">1 Month</span></h3>
		<ul>
			<li><span>Basic</span></li>
			<li><a href="#"><i class="fa fa-envelope-o icon_3"></i>E-Mails (10)</a></li>
			<li><a href="#"><i class="fa fa-phone icon_3"></i>Phone Number (20)</a></li>
			<li><a href="#"><i class="fa fa-video-camera icon_3"></i>Video Call (5)</a></li>
			<li><a href="#"><i class="fa fa-eye icon_3"></i>Express Interest</a></li>
			<li><a href="#"><i class="fa fa-user icon_3"></i>Profile Highlight</a></li>
			<li><a href="#"><i class="fa fa-smile-o icon_3"></i>View Profile</a></li>
			<li><a href="#"><i class="fa fa-lock icon_3"></i>Protect Photo</a></li>
			<li><a href="#"><i class="fa fa-smile-o icon_3"></i>Get SMS Alert</a></li>
		</ul>
		<a class="popup-with-zoom-anim order-btn" href="#small-dialog">Sign Up</a>
	  </div>
	  <div id="small-dialog" class="mfp-hide">
			<div class="pop_up">
			 	<div class="payment-online-form-left">
					<form>
						<h4><span class="shipping"> </span>Shipping</h4>
						<ul>
							<li><input class="text-box-dark" type="text" value="Frist Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Frist Name';}"></li>
							<li><input class="text-box-dark" type="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}"></li>
						</ul>
						<ul>
							<li><input class="text-box-dark" type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"></li>
							<li><input class="text-box-dark" type="text" value="Company Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Company Name';}"></li>
						</ul>
						<ul>
							<li><input class="text-box-dark" type="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}"></li>
							<li><input class="text-box-dark" type="text" value="Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}"></li>
							<div class="clearfix"> </div>
						</ul>
						<div class="clear"> </div>
					<ul class="payment-type">
						<h4><span class="payment"> </span> Payments</h4>
						<li>
							<span class="col_checkbox">
							<input id="3" class="css-checkbox1" type="checkbox">
							<label for="3" name="demo_lbl_1" class="css-label1"> </label>
							<a class="visa" href="#"> </a>
							</span>
						</li>
						<li>
							<span class="col_checkbox">
								<input id="4" class="css-checkbox2" type="checkbox">
								<label for="4" name="demo_lbl_2" class="css-label2"> </label>
								<a class="paypal" href="#"> </a>
							</span>
						</li>
						<div class="clearfix"> </div>
					</ul>
						<ul>
							<li><input class="text-box-dark" type="text" value="Card Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Card Number';}"></li>
							<li><input class="text-box-dark" type="text" value="Name on card" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name on card';}"></li>
							<div class="clearfix"> </div>
						</ul>
						<ul>
							<li><input class="text-box-light hasDatepicker" type="text" id="datepicker" value="Expiration Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Expiration Date';}"><em class="pay-date"> </em></li>
							<li><input class="text-box-dark" type="text" value="Security Code" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Security Code';}"></li>
							<div class="clearfix"> </div>
						</ul>
						<ul class="payment-sendbtns">
							<li><input type="reset" value="Cancel"></li>
							<li><input type="submit" value="Process order"></li>
						</ul>
						<div class="clearfix"> </div>
					</form>
				</div>
  			</div>
		</div>
	  </div>
	  <div class="col-md-3 pricing-table">
		<div class="pricing-table-grid">
		  <h3><span class="dollar">Rs.</span>2999<br><span class="month1">3 Months</span></h3>
		  <ul>
			<li><span>Silver</span></li>
			<li><a href="#"><i class="fa fa-envelope-o icon_3"></i>E-Mails (10)</a></li>
			<li><a href="#"><i class="fa fa-phone icon_3"></i>Phone Number (20)</a></li>
			<li><a href="#"><i class="fa fa-video-camera icon_3"></i>Video Call (5)</a></li>
			<li><a href="#"><i class="fa fa-eye icon_3"></i>Express Interest</a></li>
			<li><a href="#"><i class="fa fa-user icon_3"></i>Profile Highlight</a></li>
			<li><a href="#"><i class="fa fa-smile-o icon_3"></i>View Profile</a></li>
			<li><a href="#"><i class="fa fa-lock icon_3"></i>Protect Photo</a></li>
			<li><a href="#"><i class="fa fa-smile-o icon_3"></i>Get SMS Alert</a></li>
		</ul>
		  <a class="popup-with-zoom-anim order-btn" href="#small-dialog">Sign Up</a>
		</div>
	  </div>
	  <div class="col-md-3 pricing-table">
		<div class="pricing-table-grid">
			<h3><span class="dollar">Rs.</span>3999<br><span class="month1">6 Months</span></h3>
			<ul>
				<li><span>Gold</span></li>
				<li><a href="#"><i class="fa fa-envelope-o icon_3"></i>E-Mails (10)</a></li>
				<li><a href="#"><i class="fa fa-phone icon_3"></i>Phone Number (20)</a></li>
				<li><a href="#"><i class="fa fa-video-camera icon_3"></i>Video Call (5)</a></li>
				<li><a href="#"><i class="fa fa-eye icon_3"></i>Express Interest</a></li>
				<li><a href="#"><i class="fa fa-user icon_3"></i>Profile Highlight</a></li>
				<li><a href="#"><i class="fa fa-smile-o icon_3"></i>View Profile</a></li>
				<li><a href="#"><i class="fa fa-lock icon_3"></i>Protect Photo</a></li>
				<li><a href="#"><i class="fa fa-smile-o icon_3"></i>Get SMS Alert</a></li>
		    </ul>
			<a class="popup-with-zoom-anim order-btn" href="#small-dialog">Sign Up</a>
		</div>
	  </div>
	  <div class="col-md-3 pricing-table">
		<div class="pricing-table-grid">
			<h3><span class="dollar">Rs.</span>4999<br><span class="month1">10 Months</span></h3>
			<ul>
				<li><span>Diamond</span></li>
				<li><a href="#"><i class="fa fa-envelope-o icon_3"></i>E-Mails (10)</a></li>
				<li><a href="#"><i class="fa fa-phone icon_3"></i>Phone Number (20)</a></li>
				<li><a href="#"><i class="fa fa-video-camera icon_3"></i>Video Call (5)</a></li>
				<li><a href="#"><i class="fa fa-eye icon_3"></i>Express Interest</a></li>
				<li><a href="#"><i class="fa fa-user icon_3"></i>Profile Highlight</a></li>
				<li><a href="#"><i class="fa fa-smile-o icon_3"></i>View Profile</a></li>
				<li><a href="#"><i class="fa fa-lock icon_3"></i>Protect Photo</a></li>
				<li><a href="#"><i class="fa fa-smile-o icon_3"></i>Get SMS Alert</a></li>
		    </ul>
			<a class="popup-with-zoom-anim order-btn" href="#small-dialog">Sign Up</a>
		</div>
	  </div>
	  <div class="clearfix"> </div>
    </div>
</div>


<!----------------------------Content mid end------------------------------------------------------>
<hr />    
   <!---------------------Footer------------------------->
<div class="row" style="margin-top:2px;">
           <div class="footer">
    	<div class="container">
    		<div class="col-md-4 col_2">
    			<h4>About Us</h4>
    			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris."</p>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Help & Support</h4>
    			<ul class="footer_links">
    				<li><a href="#">24x7 Live help</a></li>
    				<li><a href="about.jsp">Contact us</a></li>
    				<li><a href="#">Feedback</a></li>
    				<li><a href="faq.jsp">FAQs</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Quick Links</h4>
    			<ul class="footer_links">
    				<li><a href="privacy.jsp">Privacy Policy</a></li>
    				<li><a href="terms.jsp">Terms and Conditions</a></li>
    				<li><a href="services.jsp">Services</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Social</h4>
    			<ul class="footer_social">
				  <li><a href="www.facebook.com"><i class="fa fa-facebook fa1"> </i></a></li>
				  <li><a href="www.twitter.com"><i class="fa fa-twitter fa1"> </i></a></li>
				  <li><a href="www.gmail.com"><i class="fa fa-google-plus fa1"> </i></a></li>
				  <li><a href="www.youtube.com"><i class="fa fa-youtube fa1"> </i></a></li>
			    </ul>
    		</div>
    		<div class="clearfix"> </div>
    		<div class="copy">
		      <p>Copyright ©  Marital . All Rights Reserved </p>
	        </div>
    	</div>
    </div>
 </div>    
        
	
</body>
<script>
// function to limt the length
function maxLengthCheck(object)
  {
    if (object.value.length > object.maxLength)
      object.value = object.value.slice(0, object.maxLength);
  }
  
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
  
</script>

</html>

