<!--------------------------------------------------------------------
----------------------------------------------------------------------

                        Manobandhan Profile Page
            
-----------------------------------------------------------------------
----------------------------------------------------------------------->

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
  <title>MANOBANDHAN</title>
    
   <link rel="shortcut icon" href="images/logo/Mano1.png" type="image/x-icon" />     
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
        
   <script type="text/javascript">\
   <!--
    $(document).on("click", ".bedit", function(){
    	
    	console.log("Function
    			
    			call");
    	
    	var $this = $(this);
 
    	if ($this.html() === 'Edit') {
    		
    		console.log("Edit call");
    		$this.html('Save');
    		
    		$(".basicDetails").prop('contenteditable', true);
    	} else {
    		console.log("Save call");
    		$this.html('Edit');
    		$(".basicDetails").prop('contenteditable', false);
    		
    		var bname = $("#bname").text();
    		$('input[name="name"]').val()=bname;
    		console.log(bname);
    	}
   	});-->
    </script>   
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
<jsp:include page="Header.jsp"/>

<%-- 

<%
    HttpSession hs = request.getSession();
    String role    = session.getValue("user").toString();
    System.out.println("Manobandhan Profile Page"+role);

%>--%>

<body>
	
	<!---------------------header,Menu----------------------------------------------------------->
    
	              <!---------------------menu------------------------->
	
		<div class="row">
			<div class="col-lg-12 col-sm-12 col-md-12" >
				<nav class="nav navbar-default" style="background-color:#AA3535;  width: 100%;">
					<div class="container-fluid">
						<ul class="nav navbar-nav navbar-left" style="font-family:'#44 Font';"><!----left--->
							<li ><a href="profile.jsp" style="color: white;">Home</a></li>
                            <li ><a href="matches.jsp" style="color: white;">Matches</a></li>
                            <li ><a href="inbox.jsp" style="color: white;">Inbox</a></li>
                            <li ><a href="search.jsp" style="color: white;">Search</a></li>
                            <li ><a href="upgrade.jsp" style="color: white;">Premium1</a></li>

                        </ul>
						<ul class="nav navbar-nav" style="font-family:'#44 Font'; margin-left: 20%;">  <!----Center--->
							<li ><a href="profile.jsp" style="color: white;"><img src="images/logo/logo.png" alt="Marital" height="25"/></a></li>
                        </ul>                            
		                 <ul class="nav navbar-nav navbar-right" style="font-family:'#44 Font'; margin-right: 10px; margin-top: 4px;">  <!----right--->                                                        							
							<li><a href="" data-toggle="modal" data-target="#Login_model" style="color: white;"></span>My Profile</a></li>
							
                            <div class="profile-picture small-profile-picture">                                
                                <img width="40px" alt="Anne Hathaway picture" src="data:image/jpeg;base64,${photo}">                                
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
                         <img width="100px" alt="Anne Hathaway picture" src="data:image/jpeg;base64,${photo}">
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
                         <button class="btn-sm btn-danger"> Edit</button>            
                      </div>
                      
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table">
                   <a href='EditServlet?id="+5+"'><button type="button">edit</button></a>
    		        	<tbody>    		        						   						                   
    					    <tr>
    							<th><b>Age :</b></th>
    							<!-- <td ><input type="number" ><%= session.getAttribute("age") %></td> -->
    							<td contenteditable="false"><%= session.getAttribute("age") %></td>
    						</tr>
    					    <tr >
    							<th><b>Marital Status :</b></th>
    							<td contenteditable="false"><%= session.getAttribute("marital_status") %></td>
    						</tr>   
    						 
    											    
    				    </tbody>                        
				</table>   
				                                      
                    </div>    
                                                                              
              </div>     
               <div class="card" style="margin-top: -22px;" >           <!----------Critical Detail---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Basic Detail</b></p>
                         <form>
                         	<button class="btn-sm btn-primary bedit"> Edit</button>
                         	<input type="hidden" name ="name" id="name" value="">
                         	<input type="hidden" name ="height" id="height" value="">
                         	<input type="hidden" name ="weight" id="weight" value="">
                         	<input type="hidden" name ="Mother_tongue" id="Mother_tongue" value="">
                         	<input type="hidden" name ="caste" id="caste" value="">
                         	<input type="hidden" name ="Annual_Income" id="Annual_Income" value="">
                         	<input type="hidden" name ="profilemanageby" id="profilemanageby" value="">
                         	
                         </form>               
                      </div>
                      
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table">
    		        	<tbody>   
    					   <tr>
    							<td><b>Full Name :</b></td>
    							<td id="bname" class="basicDetails" contenteditable="false"><%= session.getAttribute("name") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Height :</b></td>
    							<td  class="basicDetails" contenteditable="false"><%= session.getAttribute("height") %></td>
    						</tr>
    					      <tr >
    							<td ><b>Weight :</b></td>
    							<td  class="basicDetails" contenteditable="false"><%= session.getAttribute("weight") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Mother Tongue :</b></td>
    							<td  class="basicDetails" contenteditable="false"><%= session.getAttribute("Mother_tongue") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Caste :</b></td>
    							<td  class="basicDetails" contenteditable="false"><%= session.getAttribute("caste") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Annual Income :</b></td>
    							<td  class="basicDetails" contenteditable="false"><%= session.getAttribute("Annual_Income") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Profile Managed by :</b></td>
    							<td  class="basicDetails" contenteditable="false"><%= session.getAttribute("profilemanageby") %></td>
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
                         <button class="btn-sm btn-primary"> Edit</button>                 
                      </div>
                      
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table">
    		        	<tbody>
    		        		<p>I have completed my B.E in computers and currently i am working in pune in one of the reputed IT organization . My outlook towards life is modern but i am equally grounded with my traditions .My hobbies are dancing, shopping and travelling.</p>				   						                   
    					  				    
    				    </tbody>                        
				</table>                                         
                    </div>                                                              
              </div>
              
              
              <div class="card" style="margin-top: -20px;">           <!----------Education Carrer---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Education Carrer</b></p>  
                         <button class="btn-sm btn-primary"> Edit</button>                
                    </div>
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table" >
    		        	<tbody>
    		        		<tr >
    							<td><b>Highest Education :</b></td>
    							<td><%= session.getAttribute("education") %></td>
    						</tr>
    					    <tr >
    							<td ><b>Occupation :</b></td>
    							<td ><%= session.getAttribute("occupation") %></td>
    						</tr>
    					    
    					   
    					    
    				    </tbody>
                        
				</table>                                         
                    </div>                                                              
              </div>
              
              <div class="card" style="margin-top: -20px;">           <!----------Life Style---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>LifeStyle</b></p> 
                         <button class="btn-sm btn-primary"> Edit</button>                 
                    </div>
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table" >
    		        	<tbody>
    						  <tr >
    							<td ><b>Complexion :</b></td>
    							<td ><%= session.getAttribute("complexion") %></td>
                                 <tr >
    							<td ><b>Body Type :</b></td>
    							<td ><%= session.getAttribute("body_type") %></td>
                                
    					    <tr >
    							<td ><b>Language Known :</b></td>
    							<td ><%= session.getAttribute("language") %></td>
                                </tr>
                                <tr>
                                <td ><b>Blood Group :</b></td>
    							<td ><%= session.getAttribute("blood_group") %></td>
    						</tr>
       				    </tbody>                        
				</table>                                         
                    </div>                                                              
              </div>
               <div class="card" style="margin-top: -5px;">           <!----------Your Likes---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Family Details</b></p>
                         <button class="btn-sm btn-primary"> Edit</button>                  
                      </div>
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table" >
    		        	<tbody>
    		        		<tr >
    							<td><b>Father's Name:</b></td>
    							<td><%= session.getAttribute("Fname") %></td>
    						</tr>
    						<tr >
    							<td><b>Father's Occupation:</b></td>
    							<td><%= session.getAttribute("FOccupation") %></td>
    						</tr>
    					    <tr >
    							<td><b>Mother's Name:</b></td>
    							<td><%= session.getAttribute("Mname") %></td>
    						</tr>
    						<tr >
    							<td><b>Mother's Occupation:</b></td>
    							<td><%= session.getAttribute("MOccupation") %></td>
    						</tr>
    						<tr >
    							<td><b>Brother(s):</b></td>
    							<td><%= session.getAttribute("Brothers") %></td>
    						</tr>
    						<tr >
    							<td><b>Sister(s):</b></td>
    							<td><%= session.getAttribute("Sisters") %></td>
    						</tr>
    						<tr >
    							<td><b>Uncle:</b></td>
    							<td><%= session.getAttribute("uncle") %></td>
    						</tr>
    						<tr >
    							<td><b>Uncle(m):</b></td>
    							<td><%= session.getAttribute("unclem") %></td>
    						</tr>
    						<tr >
    							<td><b>Aunt(s):</b></td>
    							<td><%= session.getAttribute("aunt") %></td>
    						</tr>
                            <tr >
    							<td><b>Family Income:</b></td>
    							<td><%= session.getAttribute("FIncome") %></td>
    						</tr>
       				    </tbody>                        
				</table>                                         
                    </div>                                                              
              </div>
       
        
              <div class="card" style="margin-top: -20px;">           <!----------Life Style---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Astro Background</b></p>                  
                    	<button class="btn-sm btn-primary"> Edit</button>
                    </div>
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table" >
    		        	<tbody>
    						  <tr >
    							<td ><b>D.O.B :</b></td>
    							<td ><%= session.getAttribute("DOB") %></td>
                                 <tr >
    							<td ><b>Birth Time :</b></td>
    							<td ><%= session.getAttribute("BirthTime") %></td>
                                
    					    <tr >
    							<td ><b>Birth Place :</b></td>
    							<td ><%= session.getAttribute("BirthPlace") %></td>
                                </tr>
                                <tr>
                                <td ><b>Rashi :</b></td>
    							<td ><%= session.getAttribute("Rashi") %></td>
    						</tr>
    						  <tr >
    							<td ><b>Nadi :</b></td>
    							<td ><%= session.getAttribute("Nadi") %></td>
                                 <tr >
    							<td ><b>Manglik :</b></td>
    							<td ><%= session.getAttribute("Manglik") %></td>
                                
    					    <tr >
    							<td ><b>Gotra :</b></td>
    							<td ><%= session.getAttribute("Gotra") %></td>
                                </tr>
                                <tr>
                                <td ><b>Gaan :</b></td>
    							<td ><%= session.getAttribute("Gaan") %></td>
    							</tr>
    							<tr>
    							<td ><b>Devak :</b></td>
    							<td ><%= session.getAttribute("Devak") %></td>
    						</tr>
    						</tr>
       				    </tbody>                        
				</table>                                         
                    </div>                                                              
              </div>
         </div>    
         <div class="card" style="margin-top: -5px;">           <!----------Your Likes---------->
                      <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Partner References</b></p>
                         <button class="btn-sm btn-primary"> Edit</button>                  
                      </div>
                      <div class="card-content" style="margin-top: 5px;">           
                    <table class="table" >
    		        	<tbody>
    		        		<tr >
    							<td><b>Age:</b></td>
    							<td><%= session.getAttribute("PAge") %></td>
    						</tr>
    						<tr >
    							<td><b>Marital Status:</b></td>
    							<td><%= session.getAttribute("PMaritalStatus") %></td>
    						</tr>
    						<tr >
    							<td><b>Qualification:</b></td>
    							<td><%= session.getAttribute("PQualification") %></td>
    						</tr>
    					    <tr >
    							<td><b>Job Specification:</b></td>
    							<td><%= session.getAttribute("PJobSpecification") %></td>
    						</tr>
    						<tr >
    							<td><b>Complexion:</b></td>
    							<td><%= session.getAttribute("PComplexion") %></td>
    						</tr>
    						<tr >
    							<td><b>Height:</b></td>
    							<td><%= session.getAttribute("PHeight") %></td>
    						</tr>
    						<tr >
    							<td><b>Body Type:</b></td>
    							<td><%= session.getAttribute("PBodyType") %></td>
    						</tr>
    						<tr >
    							<td><b>Diet:</b></td>
    							<td><%= session.getAttribute("PDiet") %></td>
    						</tr>
    						<tr >
    							<td><b>Mother Tongue:</b></td>
    							<td><%= session.getAttribute("PMotherTongue") %></td>
    						</tr>
    						<tr >
    							<td><b>Religion:</b></td>
    							<td><%= session.getAttribute("PReligion") %></td>
    						</tr>
                            <tr >
    							<td><b>Caste:</b></td>
    							<td><%= session.getAttribute("PCaste") %></td>
    						</tr>
    						</tr>
    						<tr >
    							<td><b>Country Of Residence:</b></td>
    							<td><%= session.getAttribute("PCountryOfResidence") %></td>
    						</tr>
    						<tr >
    							<td><b>State:</b></td>
    							<td><%= session.getAttribute("PState") %></td>
    						</tr>
    						
                            <tr >
    							<td><b>Residence Status:</b></td>
    							<td><%= session.getAttribute("PResidenceStatus") %></td>
    						</tr>
       				    </tbody>                        
				</table>                                         
                    </div>                                                              
              </div>
       
                            <!-------right profile------>
       <div class="col-lg-3 col-md-3 col-sm-12">            <!-----------Simillar Profile---------------->
            <div class="card" style="margin-top: 5px;">
                    <div class="card-header" style="margin-top: 5px;">           
                         <p style="font-family: Agnes; font-size: 2em;"><b>Similar Profile</b></p>  
                         <button class="btn-sm btn-primary"> Edit</button>                
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
		      <p>Copyright �  Marital . All Rights Reserved </p>
	        </div>
    	</div>
    </div>
 </div>            
               
</body>
</html>