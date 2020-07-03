<!--------------------------------------------------------------------
----------------------------------------------------------------------

                        Manobandhan Search Page
            
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

	<jsp:include page="Header.jsp"/>
 
<%
    HttpSession hs = request.getSession();
    String role    = session.getValue("user").toString();
    System.out.println("Manobandhan Profile Page"+role);

%>
<body>
	
	<!---------------------header,Menu----------------------------------------------------------->
    
            <!---------------------content mid------------------------->
<div class="grid_3" style="margin-top: 2px;">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="profile.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page"><h3>Regular Search</h3></li>
     </ul>
   </div>
   <!--<script type="text/javascript">
    $(function () {
     $('#btnRadio').click(function () {
          var checkedradio = $('[name="gr"]:radio:checked').val();
          $("#sel").html("Selected Value: " + checkedradio);
      });
    });
   </script>-->
   
<div class="col-md-9 search_left">
  <form ac action="SearchServlet" method="post">	
   <!-- <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex" value="sex">Gender : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" class="radio_1" /> Male &nbsp;&nbsp;
		<input type="radio" class="radio_1" checked="checked" /> Female -->
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="maritalstatus"name="maritalstatus">Marital Status : </label>
	<div class="col-sm-7 form_radios">
		<input type="checkbox" class="radio_1" checked="checked"value="single"/> Single &nbsp;&nbsp;
		<input type="checkbox" class="radio_1" value="divorced" /> Divorced &nbsp;&nbsp;
		<input type="checkbox" class="radio_1" value="widow" /> Widowed &nbsp;&nbsp;
		
		<input type="checkbox" class="radio_1" value="any" /> Any
	</div>
	<div class="clearfix"> </div>
  </div>


  
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex" name="mothertongue">Mother Tongue : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select>
            <option value="">English</option>
            <option value="">French</option>
            <option value="">Telugu</option>
            <option value="">Bengali</option>
            <option value="">Bihari</option>
            <option value="">Hindi</option> 
            <option value="">Koshali</option> 
            <option value="">Khasi</option> 
            <option value="">Tamil</option> 
            <option value="">Urdu</option> 
            <option value="">Manipuri</option> 
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
 <!--   <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Show Profile : </label>
	<div class="col-sm-7 form_radios">
		<input type="checkbox" class="radio_1" /> with Photo &nbsp;&nbsp;
		
	</div>
	<div class="clearfix">
	</div> </div>-->
 

  </div>
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex"name="age">Age : </label>
	<div class="col-sm-7 form_radios">
	  <div class="col-sm-5 input-group1">
        <input class="form-control has-dark-background" name="28" id="slider-name" placeholder="28" type="text" required="">
      </div>
      <div class="col-sm-5 input-group1">
        <input class="form-control has-dark-background" name="40" id="slider-name" placeholder="40" type="text" required="">
      </div>
      <div class="clearfix"> </div>
	</div>
	  <button type="submit" class="btn btn-primary"  style="margin-top: 2px; margin-bottom: 2px;">Submit</button>
	<div class="clearfix"> </div>
  </div>
 </form>
 <div class="paid_people">
   <h1>Paid People</h1>
   <div class="row_1">
	   <div class="col-sm-6 paid_people-left">
	 	<ul class="profile_item">
		  <a href="view_profile.html">
		   <li class="profile_item-img">
		   	  <img src="images/a5.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="col-sm-6">
	 	<ul class="profile_item">
		  <a href="view_profile.html">
		   <li class="profile_item-img">
		   	  <img src="images/a6.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="clearfix"> </div>
   </div>
   <div class="row_1">
	   <div class="col-sm-6 paid_people-left">
	 	<ul class="profile_item">
		  <a href="view_profile.html">
		   <li class="profile_item-img">
		   	  <img src="images/a7.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="col-sm-6">
	 	<ul class="profile_item">
		  <a href="view_profile.html">
		   <li class="profile_item-img">
		   	  <img src="images/a8.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="clearfix"> </div>
   </div>
   <div class="row_2">
	   <div class="col-sm-6 paid_people-left">
	 	<ul class="profile_item">
		  <a href="view_profile.html">
		   <li class="profile_item-img">
		   	  <img src="images/a5.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="col-sm-6">
	 	<ul class="profile_item">
		  <a href="view_profile.html">
		   <li class="profile_item-img">
		   	  <img src="images/a4.jpg" class="img-responsive" alt=""/>
		   </li>
		   <li class="profile_item-desc">
		   	  <h4>2458741</h4>
		   	  <p>29 Yrs, 5Ft 5in Christian</p>
		   	  <h5>View Full Profile</h5>
		   </li>
		   <div class="clearfix"> </div>
		  </a>
	     </ul>
	   </div>
	   <div class="clearfix"> </div>
    </div>
  </div>
</div>
<div class="col-md-3 match_right">
	<div class="profile_search1">
	   <form action="SearchServlet" method="post">
		  <input type="text" class="m_1" size="30" required placeholder="Enter Profile ID :" name="profileid">
		  <input type="submit" value="Go">
	   </form>
   </div>
   <section class="slider">
	 <h3>Happy Marriage</h3>
	 <div class="flexslider">
		<ul class="slides">
		  <li>
			<img src="images/s2.jpg" alt=""/>
			<h4>Lorem & Ipsum</h4>
			<p>It is a long established fact that a reader will be distracted by the readable</p>
		  </li>
		  <li>
			<img src="images/s1.jpg" alt=""/>
			<h4>Lorem & Ipsum</h4>
			<p>It is a long established fact that a reader will be distracted by the readable</p>
		  </li>
		  <li>
			<img src="images/s3.jpg" alt=""/>
			<h4>Lorem & Ipsum</h4>
			<p>It is a long established fact that a reader will be distracted by the readable</p>
		  </li>
	    </ul>
	  </div>
   </section>
   <div class="view_profile view_profile2">
        	<h3>View Similar Profiles</h3>
        	<ul class="profile_item">
        	  <a href="view_profile.html">
        	   <li class="profile_item-img">
        	   	  <img src="images/p5.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="view_profile.html">
        	   <li class="profile_item-img">
        	   	  <img src="images/p6.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="view_profile.html">
        	   <li class="profile_item-img">
        	   	  <img src="images/p7.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="view_profile.html">
        	   <li class="profile_item-img">
        	   	  <img src="images/p8.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
       </div>
     </div>
     <div class="clearfix"> </div>
  </div>
</div>
            
            
            <!---------------------content mid ends------------------------->
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
    				<li><a href="contact.html">Contact us</a></li>
    				<li><a href="#">Feedback</a></li>
    				<li><a href="faq.html">FAQs</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Quick Links</h4>
    			<ul class="footer_links">
    				<li><a href="privacy.html">Privacy Policy</a></li>
    				<li><a href="terms.html">Terms and Conditions</a></li>
    				<li><a href="services.html">Services</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Social</h4>
    			<ul class="footer_social">
				  <li><a href="#"><i class="fa fa-facebook fa1"> </i></a></li>
				  <li><a href="#"><i class="fa fa-twitter fa1"> </i></a></li>
				  <li><a href="#"><i class="fa fa-google-plus fa1"> </i></a></li>
				  <li><a href="#"><i class="fa fa-youtube fa1"> </i></a></li>
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

