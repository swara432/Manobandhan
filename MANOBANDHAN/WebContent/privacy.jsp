<!--------------------------------------------------------------------
----------------------------------------------------------------------

                        Manobandhan Privacy Page
            
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
    
    
	              <!---------------------menu------------------------->
	
		<div class="row">
			<div class="col-lg-12 col-sm-12 col-md-12" >
				<nav class="nav navbar-default" style="background-color:#AA3535;">
					<div class="container-fluid">
						<ul class="nav navbar-nav navbar-left" style="font-family:'#44 Font';">
							<li ><a href="index.jsp" style="color: white;"><img src="images/logo/logo.png" alt="Marital" height="20px"/></a></li>								
                        </ul>
		                 <ul class="nav navbar-nav navbar-right" style="font-family:'#44 Font';">                                                        							
							<li><a href="" data-toggle="modal" data-target="#Login_model" style="color: white;"><i class="glyphicon glyphicon-user"></i> Login</a></li>       
						</ul>
					</div>
				</nav>
           </div>		
		</div>
	<!---------------------Menu ends------------------------->
                                <!-- Modal -->
                                <div id="Login_model" class="modal fade" role="dialog">
                                  <div class="modal-dialog">
                                    
                                    <!-- Modal content-->
                                    <div class="modal-content" style="border-radius: 25px;">
                                    <div class="modal-head" style="background-color:#AA3535;height: 45px; border-top-left-radius: 25px !important; border-top-right-radius: 25px !important;">
                                        <center><p style="font-family: Agnes; font-size: 2em; color: #ffffffff;"><b>Manobandhan</b></p></center>
                                        
                                    </div>
                                      <div class="modal-body">
                                        <form method="post" >	              <!----------personal info. form----------------->                                            
                                          <div class="form-group">                                        
                                            <label for="username">Username:</label>               <!----------Username----------------->                                  
                                            <input type="text" class="form-control" id="firstname" placeholder="Username" name="username" required/>                                                                                        
                                          </div>     
                                          
                                          <div class="form-group">
                                            <label for="pasword">Password:</label>            <!----------Password----------------->
                                            <input type="password" class="form-control" id="pasword" placeholder="..........." name="password"required />                                            
                                          </div>
                                                                                    
                                          <button type="submit" class="btn btn-primary"  name="submit" style="margin-top: 2px;">Submit</button>
                                        </form>
                                      </div>      			
                                      
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                                        
                                      </div>
                                    </div>
                                
                                  </div>
                                </div>                         
        		

	           <!---------------------Menu ends------------------------->
                           
            <!---------------------content mid------------------------->

<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page"><h3>Privacy Policy</h3></li>
     </ul>
   </div>
   <div class="terms_1">
	    <h3>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</h3>	
	    <ul class="feature_list">
			<li><a href="#">1. There are many variations of passages of Lorem Ipsum available.</a></li>
			<li><a href="#">2. It is a long established fact that a reader.</a></li>
			<li><a href="#">3. Nulla rutrum nisi mi, iaculis commodo nibh lobortis sed.</a></li>
			<li><a href="#">4. Sed pulvinar, nunc vitae molestie dapibus, lacus dolor dignissim sapien.</a></li>
			<li><a href="#">5. Pellentesque ipsum ex, imperdiet quis consequat sed, consectetur ut ante.</a></li>
			<li><a href="#">6. Aliquam libero felis, mollis vitae elementum vel, bibendum eu tortor.</a></li>
			<li><a href="#">7. Lorem ipsum dolor sit amet.</a></li>
		</ul>
	    <h5>It is a long established fact that a reader will be distracted by the readable content of a page </h5>   
	    <ul class="feature_list feature_list1">
			<li><a href="#">There are many variations of passages of Lorem Ipsum available.</a></li>
			<li><a href="#">It is a long established fact that a reader.</a></li>
			<li><a href="#">Nulla rutrum nisi mi, iaculis commodo nibh lobortis sed.</a></li>
			<li><a href="#">Sed pulvinar, nunc vitae molestie dapibus, lacus dolor dignissim sapien.</a></li>
			<li><a href="#">Pellentesque ipsum ex, imperdiet quis consequat sed, consectetur ut ante.</a></li>
			<li><a href="#">Aliquam libero felis, mollis vitae elementum vel, bibendum eu tortor.</a></li>
			<li><a href="#">Lorem ipsum dolor sit amet.</a></li>
		</ul>
		<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
		<p>"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>
		<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth,</p>
		<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>
		<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
		<p>"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>
		<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth,</p>
		<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>
     </div>
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

