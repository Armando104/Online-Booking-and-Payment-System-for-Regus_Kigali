<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <%@page import="pack.User"%>
<jsp:useBean id="u" scope="request" class="pack.User" />
    <jsp:useBean id="st" scope="request" class="pack.Client"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <%
        String s=(String)session.getAttribute("x");
        if(s==null){
         s="";
        }
        u.setMsg(s);
        u.setMsg1(s);
        %>
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Regus Rwanda</title>
    <!--REQUIRED STYLE SHEETS-->
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
      <!-- VEGAS STYLE CSS -->
    <link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body style="background-color: white;color: black">
    <div class="navbar navbar-inverse navbar-fixed-top scrollclass" style="background-color: #fff;">
        <div class="container" style="background-color: white;color: black">
            <div class="navbar-header" style="background-color: white;color: black">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp" style="margin-bottom: 20px"><img src="a.imgs/Logo_Regus.png" width="92" height="47" alt="Logo_Regus"/>
                </a>
            </div>
            <div class="navbar-collapse collapse" style="color: black">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#home" style="color: black">HOME</a></li>
                     <li><a href="#about" style="color: black">GALLERY</a></li>
                   
                    <li><a href="#contact" style="color: black">SIGN IN</a></li>
                     <li><a href="#contact1" style="color: black">SIGN UP</a></li>
                    
                    
                </ul>
            </div>
           
        </div>
    </div>
   
    
   
    <!--HOME SECTION-->
    <div class="container" id="home" style="background-color: white;color: black">  <br><br>
        <div class="row text-center scrollclass">
            <div class="col-md-12">
                <br><br>  <br><br>
                <span class="head-main" style="color: black"><b><h1>ONLINE OFFICES BOOKING AND PAYMENT SYSTEM</h1></b></span>
                <h3 class="head-last">Save Your Time,Book&Pay Here</h3>
            </div>
        </div>
    </div>
    <!--END HOME SECTION-->

   <!--ABOUT SECTION-->
   <section class="for-full-back " id="about" style="background-color: #cccccc;color: black;border-top: 0px solid yellow;border-bottom: 0px solid yellow">
        <div class="container" >
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1 style="color: black">Gallery</h1>
                </div>
                 
            </div>
        </div>
    </section>
    <section class="for-full-back color-white" id="about-team" style="background-color: red;color: black">
        <div class="container" style="background-color: white;color: black">
            
            <div class="row text-center g-pad-bottom" style="background-color: white;color: black">
              
                    <div class="col-md-3 col-sm-3 col-xs-8">
                       
                        <div class="team-member">
                            <img src="a.imgs/Slides.gif" class="img-rounded" style="height: 200px;"   alt="">
                          
                        </div>
                        <h3><strong><a href="Search_Office.jsp?ty=Home Office" target="_blank">Home Office</a></strong></h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                         
                          <div class="team-member">
                              <img src="a.imgs/2.jpg" class="img-rounded"  alt="">
                            
                        </div>
                        
                       <h3><strong><a href="Search_Office.jsp?ty=Conference Office" target="_blank">Conference Office</a></strong></h3>
                    </div>
                   <div class="col-md-3 col-sm-3 col-xs-6">
                          
                        <div class="team-member">
                            <img src="a.imgs/3.jpg" class="img-rounded"   alt="">
                          
                            
                        </div>
                       <h3><strong><a href="Search_Office.jsp?ty=Meeting Office" target="_blank">Meeting Office</a></strong></h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                         
                        <div class="team-member">
                            
                            <img src="a.imgs/Office-Furniture-Design-Trends.jpg" class="img-rounded"    alt="">
                           
                        </div>
                        <br>
                        <h3><strong><a href="Search_Office.jsp?ty=Team Work Office" target="_blank">Team Work Office</a></strong></h3>
                    </div>
                  
                
            </div>
           

        </div>
    </section>
    <!--END ABOUT SECTION-->

     <!--CLIENT TESTIMONIALS SECTION-->
   
     <!--END CLIENT TESTIMONIALS SECTION-->
    <!--PRICE SECTION-->
 
    <!-- END PRICE SECTION-->

  
    <!--STATS SECTION-->
     
    <!--END STATS SECTION-->

    <!--CONTACT SECTION-->
    <section class="for-full-back " id="contact" style="background-color: white">
        <br><br>
        <div class="container" style="background-color: white" >
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1>HAVE AN ACCOUNT? SIGN IN</h1>
                </div>
                 
            </div>
        </div>
    </section>
    <section class="for-full-back color-white text-center" id="contact-inner" style="background-color: white;border-bottom: 1px solid #cccccc">
        <div class="container">
           
                   
            ${u.msg}
            <form action="Login_Processing.jsp" method="POST">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="email" class="form-control" required="required" placeholder="Your Email Address" name="username">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="password" class="form-control" required="required" placeholder="Your Password" name="password">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                               
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    
              
        </div>
        <br><br><br>
    </section>
     <section class="for-full-back " id="contact1" style="background-color: white">
         
        <div class="container" style="background-color: white" >
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                     
                    <h1>DON'T HAVE AN ACCOUNT? SIGN UP HERE</h1>
                    ${u.msg}
                </div>
                 
            </div>
        </div>
    </section>
    <section class="for-full-back color-white text-center" id="contact-inner1" style="background-color: white;">
        <div class="container">
           
            
            ${st.msg}
                    
            <form action="Client_Processing.jsp" method="GET">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Your Full Names" name="names">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Your Home Address" name="address">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Your Phone Number" name="tel">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="email" class="form-control" required="required" placeholder="Your Email Address" name="email">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="password" class="form-control" required="required" placeholder="Choose Your Password" name="password">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                               
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    
              
        </div>
    </section>
    <!--END CONTACT SECTION-->
    <!--SOCIAL SECTION-->
    <section id="social-section" style="background-color: white;color: black">
        <div class="container">
            <div class="row text-center">
                    <div class="col-md-4" style="">
					 
					<p class="text-center"><a href="#"><i class="fa fa-facebook fa-5x"></i></a></p>
				</div>
				<div class="col-md-4" style="">
					 
					<p class="text-center"><a href="#"><i class="fa fa-twitter fa-5x"></i></a></p>
				</div>
				<div class="col-md-4" style="background-color: none;color: black">
					 
					<p class="text-center"><a href="#"><i class="fa fa-google-plus fa-5x"></i></a></p>
				</div>
                    </div>
            </div>
        </section>
  
    <!--END SOCIAL SECTION-->
    <!--FOOTER SECTION -->
    <div class="for-full-back" id="footer" style="background-color: #000000;color: white">
        2016 | All Right Reserved | by: <a href="#" target="_blank" style="color:#fff" >Lambert</a>
         
    </div>
    <!-- END FOOTER SECTION -->

    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="assets/plugins/bootstrap.js"></script>  
    <!-- VEGAS SLIDESHOW SCRIPTS -->
    <script src="assets/plugins/vegas/jquery.vegas.min.js"></script>
     <!-- SCROLL SCRIPTS -->
    <script src="assets/plugins/jquery.easing.min.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
<%
        session.setAttribute("x", "");
        
        %>
</body>
</html>
