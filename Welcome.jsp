<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
    <link href="../assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet" />
      <!-- VEGAS STYLE CSS -->
    <link href="../assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="../assets/css/style.css" rel="stylesheet" />
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
                <a class="navbar-brand" href="../index.jsp" style="margin-bottom: 20px"><img src="../a.imgs/Logo_Regus.png" width="92" height="47" alt="Logo_Regus"/>
                </a>
            </div>
            <div class="navbar-collapse collapse" style="color: black">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#home" style="color: black">HOME</a></li>
                     <li><a href="#about" style="color: black">GALLERY</a></li>
                   
                     <li><a href="../index.jsp#contact" style="color: black">SIGN IN</a></li>
                     <li><a href="../index.jsp#contact1" style="color: black">SIGN UP</a></li>
                    
                    
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
              
                    <div class="col-md-3 col-sm-3 col-xs-6">
                       
                        <div class="team-member">
                            <img src="../a.imgs/1.jpg" class="img-rounded"    alt="">
                          
                        </div>
                          <h3><strong>Home Office</strong></h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                         
                          <div class="team-member">
                              <img src="../a.imgs/2.jpg" class="img-rounded"  alt="">
                            
                        </div>
                        
                       <h3><strong>Conference Room</strong></h3>
                    </div>
                   <div class="col-md-3 col-sm-3 col-xs-6">
                          
                        <div class="team-member">
                            <img src="../a.imgs/3.jpg" class="img-rounded"   alt="">
                          
                            
                        </div>
                       <h3><strong>Meeting Room</strong></h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                         
                        <div class="team-member">
                            
                            <img src="../a.imgs/Office-Furniture-Design-Trends.jpg" class="img-rounded"    alt="">
                           
                        </div>
                        <br>
                         <h3><strong>Team Work Office</strong></h3>
                    </div>
                  
                
            </div>
           

        </div>
    </section>
    
  
    <!--END SOCIAL SECTION-->
    <!--FOOTER SECTION -->
    <div class="for-full-back" id="footer" style="background-color: #000000;color: white">
        2016 | All Right Reserved | by: <a href="#" target="_blank" style="color:#fff" >Diane</a>
         
    </div>
    <!-- END FOOTER SECTION -->

    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="../assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="../assets/plugins/bootstrap.js"></script>  
    <!-- VEGAS SLIDESHOW SCRIPTS -->
    <script src="../assets/plugins/vegas/jquery.vegas.min.js"></script>
     <!-- SCROLL SCRIPTS -->
    <script src="../assets/plugins/jquery.easing.min.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="../assets/js/custom.js"></script>
<%
        session.setAttribute("x", "");
        
        %>
</body>
</html>
