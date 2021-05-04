<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="Developper/LoginRegistrationForm/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="Developper/LoginRegistrationForm/css/style2.css" />
		<link rel="stylesheet" type="text/css" href="Developper/LoginRegistrationForm/css/animate-custom.css" />
    </head>
    <body style="background-image: none">
        <div class="container">
            <!-- Codrops top bar -->
            
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            
                            <center>
                                <p class="change_link">
						
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </center>
                           
                        </div>

                        <div id="register" class="animate form">
                            <form  action="mysuperscript.php" autocomplete="on"> 
                                <h1>New Office Registration Form</h1> 
                                <p> 
                                    <label for="usernamesignup" class="login" data-icon="u">Office Address</label>
                                    <input id="about-team" name="officeAddress" required="required" type="text" placeholder="Please Enter The Office Address" />
                                </p>
                                
                                <p>
                                    <select   name="officeType" class="btn btn-info" style="height: 35px;width: 100%;">
                                          <option>--Select Office Type--</option>
                                     <option>Meeting Room</option>
                                     <option>Home Office</option>
                                     <option>Team Work Office</option>
                                 </select>  
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Monthly Price</label>
                                    <input id="passwordsignup" name="cost" required="required" type="text" placeholder="Please Enter The Office Monthly Cost"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Maximum Person(s)</label>
                                    <input id="passwordsignup_confirm" name="capacity" required="required" type="text" placeholder="Please Enter The Maximum Person(s) Allowed"/>
                                </p>
                                 <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Office Size</label>
                                    <input id="passwordsignup_confirm" name="officeSize" required="required" type="text" placeholder="Please Enter The Office Size"/>
                                </p>
                                 <p> 
                                     <textarea class="" name="otherDetails" placeholder="" style="width: 100%;height: 80px">
No Other Details Information

                                    </textarea>
                                      </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                               
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>