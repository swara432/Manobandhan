<!--------------------------------------------------------------------
----------------------------------------------------------------------

                        Manobandhan About Page
            
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

.registration-button{
    color: white; 
    width: auto; 
    background-color:#FFC300; 
    color: #ffffff; 
    font-family:'A850-Roman'; 
    font-size: 3em;
    border-radius: 10px;
    margin-left:3px;
    padding-left: 2px;
}
.registration-button:hover{
    color: black;
}
</style>
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
               
               
               <!---------------------Banner------------------------->
	<div class="row">
            <div class="banner">
              <img src="images/banner/b2.jpg" alt="mariage" style="width:100%"  />
              <div class="content">
                <h1 style="font-family:'Alpha Echo';">Find Your Match Here</h1>
                <a href="" data-toggle="modal" data-target="#Registration_model" class="registration-button" style="text-decoration:none; ">Register Free</a>
                <h5><a href="" data-toggle="modal" data-target="#Login_model" style="color: #ffffffff; text-decoration:underline;">Member Login</a></h5>    
              </div>
            </div>
    </div>  
               <!---------------------Banner ends------------------------->
               
               <!--------------------------------------------------------->
                                <!-- Modal -->
                                <div id="Registration_model" class="modal fade" role="dialog">
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
                                          
                                          <div class="form-group">
                                            <label for="confirm_pasword">Confirm Password:</label>            <!----------Password----------------->
                                            <input type="password" class="form-control" id="C_pasword" placeholder="..........." name="C_password"required />                                            
                                          </div>
                                          
                                          <div class="form-group">
                                            <label for="Email">Email:</label>            <!----------Password----------------->
                                            <input type="email" class="form-control" id="email" placeholder="abc@xyz.com" name="email"required />                                            
                                          </div>                                                                                     

                                          <div class="form-group">
                                            <label for="contact">Contact:</label>            <!----------Password----------------->
                                            <input type="number" class="form-control" id="Ccontact" placeholder="xxx-xxxx-xxx"  name="contact" min="0" maxlength="10" oninput="maxLengthCheck(this)" required />                                            
                                          </div> 
                                                                                    
                                          <button type="submit" class="btn btn-primary"  name="submit" style="margin-top: 2px;">Register</button>
                                        </form>
                                      </div>      			
                                      
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                                        
                                      </div>
                                    </div>
                                
                                  </div>
                                </div>                         
               
               
               <!--------------------------------------------------------->
               

<!--------------------------About Us---------------------------------->
<div class="grid_2">
	<div class="container">
		<h2>About Us</h2>
       	<div class="heart-divider">
			<span class="grey-line"></span>
			<i class="fa fa-heart pink-heart"></i>
			<i class="fa fa-heart grey-heart"></i>
			<span class="grey-line"></span>
        </div>
        
        <div class="col-md-12">
   	  	
   	  	<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
   	  	<div class="accordation">
		   <div class="jb-accordion-wrapper">
				<div class="jb-accordion-title">Accordion 1 <button type="button" class="jb-accordion-button" data-toggle="collapse" data-target="#accordion-1-"><i class="fa fa-angle-down"> </i></button></div>
				<p><!-- /.accordion-title -->
				</p><div id="accordion-1-" class="jb-accordion-content collapse in" style="height: auto;">
				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae...</p>
				</div>
				<p><!-- /.collapse --></p>
			</div>
			<div class="jb-accordion-wrapper">
				<div class="jb-accordion-title">Accordion2 <button type="button" class="jb-accordion-button" data-toggle="collapse" data-target="#accordion2-"><i class="fa fa-angle-down"> </i></button></div>
				<p><!-- /.accordion-title -->
				</p><div id="accordion2-" class="jb-accordion-content collapse ">
				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt </p>
				</div>
				<p><!-- /.collapse --></p>
			</div>
			<div class="jb-accordion-wrapper">
				<div class="jb-accordion-title">Accordion3<button type="button" class="jb-accordion-button" data-toggle="collapse" data-target="#accordion3"><i class="fa fa-angle-down"> </i></button></div>
				<p><!-- /.accordion-title -->
				</p><div id="accordion3" class="jb-accordion-content collapse ">
				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt </p>
				</div>
				<p><!-- /.collapse --></p>
			</div>
		</div>
   	  </div>
        <div class="clearfix"></div>
     
   </div>
 </div>       
<!-------------------------About Us ends------------------------------------------------>
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
</script>

</html>

