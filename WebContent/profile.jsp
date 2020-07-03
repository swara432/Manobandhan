<!--------------------------------------------------------------------
----------------------------------------------------------------------

                        Manobandhan Index Page
            
-----------------------------------------------------------------------
----------------------------------------------------------------------->



<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
  <title>Manobandhan</title>
    
    
    <link href="css/flexslider.css" rel="stylesheet" type="text/css"/>
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
    
    
</style>


<body>
	
	<!---------------------header,Menu----------------------------------------------------------->
    
	              <!---------------------menu------------------------->
	
		<div class="row">
			<div class="col-lg-12 col-sm-12 col-md-12" >
				<nav class="nav navbar-default" style="background-color:#AA3535;  width: 100%;">
					<div class="container-fluid">
						<ul class="nav navbar-nav navbar-left" style="font-family:'#44 Font';"><!----left--->
							<li ><a href="home.php" style="color: white;">Home</a></li>
                            <li ><a href="home.php" style="color: white;">Matches</a></li>
                            <li ><a href="home.php" style="color: white;">Inbox</a></li>
                            <li ><a href="home.php" style="color: white;">Search</a></li>
                        </ul>
						<ul class="nav navbar-nav" style="font-family:'#44 Font'; margin-left: 20%;">  <!----Center--->
							<li ><a href="home.php" style="color: white;"><img src="images/logo/logo.png" alt="Marital" height="25"/></a></li>
                        </ul>                            
		                 <ul class="nav navbar-nav navbar-right" style="font-family:'#44 Font'; margin-right: 10px; margin-top: 4px;">  <!----right--->                                                        							
							<li><a href="" data-toggle="modal" data-target="#Login_model" style="color: white;"></span>My Profile</a></li>
                            <div class="profile-picture small-profile-picture">                                
                                <img width="40px" alt="Anne Hathaway picture" src="images/icon/a1.jpg">                                
                            </div>                                   
						</ul>
					</div>
				</nav>
           </div>     
			
		</div>		

	           <!---------------------Menu ends------------------------->   
     <div class="row" style="margin-top: 5px;">  
       <div class="col-lg-3 col-md-3 col-sm-12">  <!-----left prfile------------------->    
           
              <div class="card" style="margin-top: 5px;">           
                     <div class="flexslider">
    					 <ul class="slides">
                         <img width="100px" alt="Anne Hathaway picture" src="images/icon/a1.jpg">
    						<li data-thumb="images/icon/p1.jpg">
    							<img src="images/icon/a1.jpg" />
    						</li>
    						<li data-thumb="images/icon/p2.jpg">
    							<img src="images/icon/p2.jpg" />
    						</li>
    						<li data-thumb="images/icon/p3.jpg">
    							<img src="images/icon/p3.jpg" />
    						</li>
    						<li data-thumb="images/icon/p4.jpg">
    							<img src="images/icon/p4.jpg" />
    						</li>
    					 </ul>
                      </div>                      
              </div>
              
              <div class="card" style="margin-top: -22px;" >           <!----------Critical Detail---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Critical Detail</b></p>                  
                      </div>
                      
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table">
    		        	<tbody>    		        						   						                   
    					    <tr>
    							<th><b><% %>Age :</b></th>
    							<td><%= session.getAttribute("age") %></td>
    						</tr>
    					    <tr >
    							<th><b>Marital Status :</b></th>
    							<td><%= session.getAttribute("marital_status") %></td>
    						</tr>   
    						 
    											    
    				    </tbody>                        
				</table>                                         
                    </div>                                                              
              </div>      
       </div>
       
       <div class="col-lg-6 col-md-6 col-sm-12">  <!-----middle profile detail------------------->    
           
              <div class="card" >           <!----------About Me---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>About Me</b></p>                  
                      </div>
                      
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table">
    		        	<tbody>
    		        		<p>I have completed my B.E in computers and currently i am working in pune in one of the reputed IT organization . My outlook towards life is modern but i am equally grounded with my traditions .My hobbies are dancing, shopping and travelling.</p>				   						                   
    					    <tr>
    							<th><b>About My Family :</b></th>
    							<td></td>
    						</tr>
    					    <tr >
    							<th><b>Education :</b></th>
    							<td><%= session.getAttribute("education") %></td>
    						</tr>
    					    <tr >
    							<th><b>Occupation:</b></th>
    							<td><%= session.getAttribute("Occupation") %></td>
    						</tr>    					    
    				    </tbody>                        
				</table>                                         
                    </div>                                                              
              </div>
              
              <div class="card" style="margin-top: -20px;">           <!----------basic Detail---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Basic Details</b></p>                  
                    </div>
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table" >
    		        	<tbody>
    		        		<tr >
    							<td><b>Full Name :</b></td>
    							<td><%= session.getAttribute("name") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Height :</b></td>
    							<td ><%= session.getAttribute("height") %></td>
    						</tr>
    					    
    					    <tr >
    							<td ><b>Mother Toungue :</b></td>
    							<td ><%= session.getAttribute("Mother_tongue") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Caste :</b></td>
    							<td ><%= session.getAttribute("Caste") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Annual Income :</b></td>
    							<td ><%= session.getAttribute("Annual_Income") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Profile Managed by :</b></td>
    							<td ><%= session.getAttribute("profilemanageby") %></td>
    						</tr>
    				    </tbody>
                        <div class="clearfix"> </div>
				</table>                                         
                    </div>                                                              
              </div>
              <div class="card" style="margin-top: -20px;">           <!----------Education Carrer---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Education Carrer</b></p>                  
                    </div>
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table" >
    		        	<tbody>
    		        		<tr >
    							<td><b>Highest Education :</b></td>
    							<td></td>
    						</tr>
    					    <tr >
    							<th ><b>U.G Degree :</b></th>
    							<td ></td>
                                
                                <th ><b>U.G School :</b></th>
    							<td ></td>
    						</tr>
    					    <tr >
    							<th ><b>P.G Degree :</b></th>
    							<td ></td>
                                
                                <th ><b>P.G School :</b></th>
    							<td ></td>
    						</tr>
    					    <tr >
    							<td ><b>Employeed In :</b></td>
    							<td ></td>
    						</tr>
    					    <tr >
    							<td ><b>Organisation Name :</b></td>
    							<td ></td>
    						</tr>
    					   
    					    
    				    </tbody>
                        
				</table>                                         
                    </div>                                                              
              </div>
              
              <div class="card" style="margin-top: -20px;">           <!----------Life Style---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>LifeStyle</b></p>                  
                    </div>
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table" >
    		        	<tbody>
    		        		<tr >
    							<td><b>Appearence :</b></td>
    							<td></td>
    						</tr>
    					    <tr >
    							<th ><b>Habits :</b></th>
    							<td ></td>
                                
                                <th >Assets :</th>
    							<td ></td>
    						</tr>
    					    <tr >
    							<th ><b>Language Known :</b></th>
    							<td ><%= session.getAttribute("language") %></td>
                                
                                <th ><b>Blood Group :</b></th>
    							<td ><%= session.getAttribute("blood_group") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Special Case :</b></td>
    							<td ></td>
    						</tr>
       				    </tbody>                        
				</table>                                         
                    </div>                                                              
              </div>
              
              <div class="card" style="margin-top: -20px;">           <!----------Your Likes---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Your Likes</b></p>                  
                      </div>
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table" >
    		        	<tbody>
    		        		<tr >
    							<td><span class="glyphicon glyphicon-glass"> :</span></td>
    							<td></td>
    						</tr>
    					    <tr >
    							<td ><span class="glyphicon glyphicon-music"> :</span></td>
    							<td ></td>
    						</tr>
    					    <tr >
    							<td ><span class="glyphicon glyphicon-plane"> :</span></td>
    							<td ></td>
    						</tr>
    					    <tr >
    							<td ><span class="glyphicon glyphicon-shopping-cart"> :</span></td>
    							<td ></td>
    						</tr>
                            <tr >
    							<td ><span class="glyphicon glyphicon-cutlery"> :</span></td>
    							<td ></td>
    						</tr>
                            <tr >
    							<td ><span class="glyphicon glyphicon-heart"> :</span></td>
    							<td ></td>
    						</tr>
                            <tr >
    							<td ><span class="glyphicon glyphicon-camera"> :</span></td>
    							<td ></td>
    						</tr>
                            
       				    </tbody>                        
				</table>                                         
                    </div>                                                              
              </div>
       </div>  
                            <!-------right profile------>
       <div class="col-lg-3 col-md-3 col-sm-12">            <!-----------Simillar Profile---------------->
            <div class="card" style="margin-top: 5px;">
                    <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Smillar Profile</b></p>                  
                      </div>           
                    <div class="card-content">
                         <div class="flexslider">
        					 <ul class="slides">
                             <img width="100px" alt="liam" src="images/icon/p6.jpg">
        						<li data-thumb="images/icon/p1.jpg">
        							<img src="images/icon/a1.jpg" />
        						</li>
        						<li data-thumb="images/icon/p2.jpg">
        							<img src="images/icon/p2.jpg" />
        						</li>
        						<li data-thumb="images/icon/p3.jpg">
        							<img src="images/icon/p3.jpg" />
        						</li>
        						<li data-thumb="images/icon/p4.jpg">
        							<img src="images/icon/p4.jpg" />
        						</li>
        					 </ul>
                          </div> 
                     </div>                           
              </div>
              
              <div class="card" style="margin-top: 5px;">   <!----------Daily Recomandation----------->
                    <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Daily Recommendation</b></p>                  
                      </div>           
                    <div class="card-content">
                         <div class="flexslider">
        					 <ul class="slides">
                             <img width="100px" alt="liam" src="images/icon/p15.jpg">
        						<li data-thumb="images/icon/p1.jpg">
        							<img src="images/icon/a1.jpg" />
        						</li>
        						<li data-thumb="images/icon/p2.jpg">
        							<img src="images/icon/p2.jpg" />
        						</li>
        						<li data-thumb="images/icon/p3.jpg">
        							<img src="images/icon/p3.jpg" />
        						</li>
        						<li data-thumb="images/icon/p4.jpg">
        							<img src="images/icon/p4.jpg" />
        						</li>
        					 </ul>
                          </div> 
                     </div>                                           
              </div>
       </div>                 
    </div>  
    
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
</html>