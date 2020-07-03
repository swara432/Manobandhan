
<!--------------------------------------------------------------------
----------------------------------------------------------------------

                        Manobandhan Info1 Page
            
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
        
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>        
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
				<ul class="nav navbar-nav" style="font-family:'#44 Font'; margin-left: 20%;">  <!----Center--->
					<li ><a href="info.jsp" style="color: white; margin-left: 300px;"><img src="images/logo/logo.png" alt="Marital" height="25"/></a></li>
                </ul>            
			</div>
		</nav>
	</div>     	
</div>		

<!---------------------Menu ends------------------------->
<!----------------------registration Detail start-------------------------------->
 <div class="container">
  <div class="col-lg-2 col-sm-12 col-md-2"></div>  
	<div class="col-lg-8 col-sm-12 col-md-8">
    	<div class="card" style="margin-top:50px; border-top-left-radius: 10px !important; border-top-right-radius: 10px !important;" >           <!----------Critical Detail---------->
        	<div class="card-content" style="margin-top: 1px;">
            	<nav class="nav navbar-default" style="background-color:#AA3535;  width: 100%;" role="tabpanel" data-example-id="togglable-tabs">
                	<ul class="nav navbar-nav " style="font-family:'#44 Font';" role="tablist">  <!----menu--->

                		<c:if test="${Activetab ne 1 and Activetab ne 2 and Activetab ne 3 and Activetab ne 4}">
                    		<li role="presentation" class="active" ><a href="#Personal" style="color: white;" role="tab" id="Personal-tab" data-toggle="tab" aria-controls="Personal" aria-expanded="true">Personal Information</a></li>
                    		<li role="presentation"><a href="#Family" style="color: white;" role="tab" id="Family-tab" data-toggle="tab" aria-controls="Family">Family Information</a></li>
                    		<li role="presentation"><a href="#Astro" style="color: white;" role="tab" id="Astro-tab" data-toggle="tab" aria-controls="Astro">Astro Background</a></li>
                    		<li role="presentation"><a href="#Partner" style="color: white;" role="tab" id="Partner-tab" data-toggle="tab" aria-controls="Partner">Partner Prefrence</a></li>      
                    	</c:if>
                    	
                    	<c:if test="${Activetab eq 1}">
                    		<li role="presentation"><a href="#Personal" style="color: white;" role="tab" id="Personal-tab" data-toggle="tab" aria-controls="Personal" aria-expanded="true">Personal Information</a></li>
                    		<li role="presentation" class="active"><a href="#Family" style="color: white;" role="tab" id="Family-tab" data-toggle="tab" aria-controls="Family">Family Information</a></li>
                    		<li role="presentation"><a href="#Astro" style="color: white;" role="tab" id="Astro-tab" data-toggle="tab" aria-controls="Astro">Astro Background</a></li>
                    		<li role="presentation"><a href="#Partner" style="color: white;" role="tab" id="Partner-tab" data-toggle="tab" aria-controls="Partner">Partner Prefrence</a></li>      
                        </c:if>
                        
                        <c:if test="${Activetab eq 2}">
                        	<li role="presentation"><a href="#Personal" style="color: white;" role="tab" id="Personal-tab" data-toggle="tab" aria-controls="Personal" aria-expanded="true">Personal Information</a></li>
                    		<li role="presentation"><a href="#Family" style="color: white;" role="tab" id="Family-tab" data-toggle="tab" aria-controls="Family">Family Information</a></li>
                    		<li role="presentation" class="active"><a href="#Astro" style="color: white;" role="tab" id="Astro-tab" data-toggle="tab" aria-controls="Astro">Astro Background</a></li>
                    		<li role="presentation"><a href="#Partner" style="color: white;" role="tab" id="Partner-tab" data-toggle="tab" aria-controls="Partner">Partner Prefrence</a></li>      
                      	</c:if>
                      	
                      <c:if test="${Activetab eq 3 or Activetab eq 4}">
                      		<li role="presentation"><a href="#Personal" style="color: white;" role="tab" id="Personal-tab" data-toggle="tab" aria-controls="Personal" aria-expanded="true">Personal Information</a></li>
                    		<li role="presentation"><a href="#Family" style="color: white;" role="tab" id="Family-tab" data-toggle="tab" aria-controls="Family">Family Information</a></li>
                    		<li role="presentation"><a href="#Astro" style="color: white;" role="tab" id="Astro-tab" data-toggle="tab" aria-controls="Astro">Astro Background</a></li>
                    		<li role="presentation" class="active"><a href="#Partner" style="color: white;" role="tab" id="Partner-tab" data-toggle="tab" aria-controls="Partner">Partner Prefrence</a></li>      
                     	</c:if>
                     	
                     </ul>
                </nav>
                      
                      
                <div id="myTabContent" class="tab-content">  
                	<c:if test="${Activetab ne 1  and Activetab ne 2 and Activetab ne 3 and Activetab ne 4}">
						<div role="tabpanel" id="Personal" aria-labelledby="Personal-tab" class="tab-pane fade active in" > 
                        	<!----------Personal Information form----------------->
                            <form action="ProfileServlet" method="post" enctype="multipart/form-data">   
                            	<input type="hidden" name="pageNo" value="1" >
                            	<input type="hidden"  name="registerId"  value="${registerId}">
                            	
                            	<div class="form-group row" style="margin-top: 5px;">
                                	<label for="ManageBy" class="col-sm-2 col-form-label">Profile Manage By: </label>        <!----------Full Name---------->
                                	<div class="col-sm-6">
                                  		<input type="text" class="form-control" name="ManageBy" id="ManageBy" required/>
                                	</div>
                              	</div>
                              	                                                                           
                              	<div class="form-group row" style="margin-top: 5px;">
                                	<label for="FullName" class="col-sm-2 col-form-label">Full Name </label>        <!----------Full Name---------->
                                	<div class="col-sm-6">
                                 	 	<input type="text" class="form-control" id="FullName" NAME="FullName"  required/>
                                	</div>
                              	</div>
                              
                              <div class="form-group row" style="margin-top: 5px;">
                                <label for="Age" class="col-sm-2 col-form-label">Age</label>        <!----------Full Name---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Age" NAME="Age"  required/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="MStatus" class="col-sm-2 col-form-label">Marital Status </label>        <!----------Marital Status---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="MStatus" NAME="MStatus" required/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Qualification" class="col-sm-2 col-form-label">Qualification </label>       <!----------Qualification---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Qualification" name="Qualification" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Occupation" class="col-sm-2 col-form-label">Occupation </label>       <!----------Qualification---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Occupation" name="Occupation" required/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="AI" class="col-sm-2 col-form-label">Annual Income </label>      <!----------Annual Income---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="AI" name="AI" required/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Height" class="col-sm-2 col-form-label">Height </label>     <!----------Height---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Height" name="Height" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Weight" class="col-sm-2 col-form-label">Weight </label>     <!----------Weight---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Weight" name="Weight" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="BloodGroup" class="col-sm-2 col-form-label">Blood Group </label>        <!----------Blood Group ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="BloodGroup" name="BloodGroup"/>
                                </div>
                              </div>
                               <div class="form-group row" >
                                <label for="Caste" class="col-sm-2 col-form-label">Caste </label>    <!----------Mother Tounge---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Caste" name="Caste" required/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Complexion" class="col-sm-2 col-form-label">Complexion </label>     <!----------Complexion ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Complexion" name="Complexion" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="LanguageKnown" class="col-sm-2 col-form-label">Language Known </label>      <!----------Language Known ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="LanguageKnown" name="LanguageKnown" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="BodyType" class="col-sm-2 col-form-label">Body Type </label>        <!----------Body Type ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="BodyType" name="BodyType" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="MotherTounge" class="col-sm-2 col-form-label">Mother Tongue </label>    <!----------Mother Tounge---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="MotherTounge" name="MotherTounge"/>
                                </div>
                              </div>
                              
                              
                              
                              <div class="form-group row" >
                                <label for="Drink" class="col-sm-2 col-form-label">Drink </label>       <!----------Drink---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Drink" name="Drink"/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Smoke" class="col-sm-2 col-form-label">Smoke </label>       <!----------Smoke---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Smoke" name="Smoke" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Smoke" class="col-sm-2 col-form-label">Profile Image </label>       <!----------Image---------->
                                <div class="col-sm-6">
                                  <input type="file" class="form-control" id="pimage" name="pimage" value=""/>
                                </div>
                              </div>
                              
                              <button type="submit" class="btn btn-primary" style="margin-top: 2px; margin-bottom: 2px;">Save & Next</button>
                            </form>
                            <!----------Personal Information form ends----------------->
                            </div> 
                           </c:if>
                         
                        
                        
                        <c:if test="${Activetab eq 1}">
                         <div role="tabpanel" id="Family" aria-labelledby="Family-tab" class="tab-pane fade active in" >                        	 
                         <!----------Family Information form----------------->
                         <form action="ProfileServlet" method="post" enctype="multipart/form-data"> 
                         <input type="hidden" name="pageNo" value="2" >
                              <div class="form-group row" style="margin-top: 5px;">
                                <label for="FatherName" class="col-sm-2 col-form-label">Father Name </label>        <!----------Father Name---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="FatherName" name="FName"/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="FatherOccupation" class="col-sm-2 col-form-label">Father Occupation </label>        <!----------Father Occupation---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="FatherOccupation" name="Foccupation" required/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="MotherName" class="col-sm-2 col-form-label">Mother Name </label>       <!----------Mother Name---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="MotherName" name="MName" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="MotherOccupation " class="col-sm-2 col-form-label">Mother Occupation </label>      <!----------Mother Occupation ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="MotherOccupation" name="Moccupation" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Brother" class="col-sm-2 col-form-label">Brother(s) </label>     <!----------Brother---------->
                                <div class="col-sm-6">
                                  <textarea id="Brother" class="form-control" rows="4" cols="50" required name="brother">
                                  </textarea>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Sister" class="col-sm-2 col-form-label">Sister(s) </label>     <!----------Sister---------->
                                <div class="col-sm-6">
                                 <textarea id="Sister" class="form-control" rows="4" cols="50" required name="sister">
                                 </textarea>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Uncle" class="col-sm-2 col-form-label">Uncle </label>        <!----------Uncle ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Uncle" name="unclep" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Uncle(Maternal)" class="col-sm-2 col-form-label">Uncle(Maternal) </label>     <!----------Uncle(Maternal) ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Uncle(Maternal)" name="unclem" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Aunt" class="col-sm-2 col-form-label">Aunt(s) </label>      <!----------Aunt ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Aunt" name="Aunt"/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="FamilyIncome" class="col-sm-2 col-form-label">Family Income </label>        <!----------Family Income ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="FamilyIncome" name="Fincome" />
                                </div>
                              </div>                             
                              
                              <button type="submit" class="btn btn-primary"  style="margin-top: 2px; margin-bottom: 2px;">Save & Next</button>
                            </form>
                                    <!----------Family Information form ends----------------->
                         
                         </div> 
                         </c:if>
                        
                        
                         <c:if test="${Activetab eq 2}">
                         <div role="tabpanel" id="Astro" aria-labelledby="Astro-tab" class="tab-pane fade active in ">
                                <!----------Astro Information form----------------->
                         <form action="ProfileServlet" method="post" enctype="multipart/form-data">     
                           <input type="hidden" name="pageNo" value="3" >
                              <div class="form-group row" style="margin-top: 5px;" >
                                <label for="dob" class="col-sm-2 col-form-label">D.O.B </label>        <!----------D.O.B---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="dob" name="dob" />
                                </div>
                              </div>                                                                            
                              <div class="form-group row" style="margin-top: 5px;">
                                <label for="BirthTime" class="col-sm-2 col-form-label">Birth Time </label>        <!---------Birth Time---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="BirthTime" name="BirthTime" />
                                </div>
                              </div>
                            
                              
                              <div class="form-group row" >
                                <label for="BirthPlace" class="col-sm-2 col-form-label">Birth Place </label>       <!----------Birth Place---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="BirthPlace"  name="BirthPlace" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Rashi " class="col-sm-2 col-form-label">Rashi </label>      <!----------Rashi ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Rashi" name="Rashi" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Nadi" class="col-sm-2 col-form-label">Nadi </label>     <!----------Nadi---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Nadi" name="Nadi" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Manglik" class="col-sm-2 col-form-label">Manglik </label>     <!----------Manglik---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Manglik" name="Manglik" />
                                  
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Gotra" class="col-sm-2 col-form-label">Gotra </label>        <!----------Gotra ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Gotra" name="Gotra"/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Devak" class="col-sm-2 col-form-label">Devak </label>     <!----------Devak ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Devak" name="Devak" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Gaan" class="col-sm-2 col-form-label">Gaan </label>      <!----------Gaan ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Gaan" name="Gaan" />
                                </div>
                              </div>                            
                              
                              <button type="submit" class="btn btn-primary"  style="margin-top: 2px; margin-bottom: 2px;">Save & Next</button>
                            </form>
                                    <!----------Astro Information form ends----------------->
                         </div>
                         </c:if>
                         
                         <c:if test="${Activetab eq 3 or Activetab eq 4 }">
                         <div role="tabpanel" id="Partner" aria-labelledby="Partner-tab" class="tab-pane fade active in">
                                <!----------Partner Preference form----------------->
                         <form action="ProfileServlet" method="post" enctype="multipart/form-data">  
                         <input type="hidden" name="pageNo" value="4" >                                                                               
                              <div class="form-group row" style="margin-top: 5px;">
                                <label for="Age" class="col-sm-2 col-form-label">Age </label>        <!---------Age---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Age" name="Age" />
                                </div>
                              </div>
                               <div class="form-group row" >
                                <label for="Qualification" class="col-sm-2 col-form-label">Qualification </label>      <!----------Qualification---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Qualification" name="Qualification" />
                                </div>
                              </div> 
                              
                              <div class="form-group row" >
                                <label for="JobSpecification" class="col-sm-2 col-form-label">Job Specification </label>      <!----------Job Specification---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="JobSpecification" name="JobSpecification" />
                                </div>
                              </div> 
                               <div class="form-group row" >
                                <label for="AnnualIncome" class="col-sm-2 col-form-label">Annual Income </label>      <!----------Annual Income---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="AnnualIncome" name="AnnualIncome"/>
                                </div>
                              </div>  
                              <div class="form-group row" >
                                <label for="Complexion" class="col-sm-2 col-form-label">Complexion </label>       <!----------Complexion---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Complexion" name="Complexion"/>
                                </div>
                              </div>
                             
                              
                              
                              
                              <div class="form-group row" >
                                <label for="Height " class="col-sm-2 col-form-label">Height </label>      <!----------Height ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Height" name="Height"/>
                                </div>
                              </div>
                                 
                              <div class="form-group row" >
                                <label for="BodyType " class="col-sm-2 col-form-label">BodyType </label>      <!----------body type ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="BodyType" name="BodyType" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Diet" class="col-sm-2 col-form-label">Diet </label>     <!----------Diet---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Diet" name="Diet" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Manglik" class="col-sm-2 col-form-label">Manglik </label>     <!----------Manglik---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Manglik" name="Manglik"/>
                                </div>
                              </div>
                              
                               <div class="form-group row" >
                                <label for="MotherTongue" class="col-sm-2 col-form-label">Mother Tongue </label>     <!----------Mother tongue---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="MotherTongue" name="MotherTounge"/>
                                </div>
                              </div>
                              
                              
                              <div class="form-group row" >
                                <label for="Religion" class="col-sm-2 col-form-label">Religion </label>        <!----------Religion---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Religion" name="Religion"/>
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="Caste" class="col-sm-2 col-form-label">Caste </label>     <!----------Caste---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="Caste" name="Caste" />
                                </div>
                              </div>
                              
                              <div class="form-group row" >
                                <label for="CountryOfResidence" class="col-sm-2 col-form-label">Country Of Residence </label>      <!----------country of residence---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="CountryOfResidence" name="CountryOfResidence" />
                                </div>
                              </div>
                              <div class="form-group row" >
                                <label for="State" class="col-sm-2 col-form-label">State </label>        <!----------state---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="State" name="State" />
                                </div>
                              </div>
                                    <div class="form-group row" >
                                <label for="MartialStatus" class="col-sm-2 col-form-label">Martial Status </label>        <!----------Martial Status---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="MartialStatus" name="MaritalStatus" />
                                </div>
                              </div>
                             
                              <div class="form-group row" >
                              <label for="ResidenceStatus" class="col-sm-2 col-form-label">Residence Status </label>      <!----------residence status ---------->
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="ResidenceStatus" name=""/>
                                </div>
                              </div> 
                              
                            
                              
                                                                                                                                                                                                                                                                                                                                                                
                              
                              <button type="submit" class="btn btn-primary"  style="margin-top: 2px; margin-bottom: 2px;">Save & Next</button>
                            </form>
                                    <!----------Partner Prefrence form ends----------------->
                         </div>
                        </c:if>
                       
                        </div>             
                      </div>                                                              
                  </div>
            </div>
   		</div>   
   		 
 <!----------------------registration Detail end---------------------------------->                    
</body>
</html>               