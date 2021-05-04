 

<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<jsp:useBean id="st" scope="request" class="pack.Office"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<link href="bootstrap.css" rel="stylesheet" />
  <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
      <!-- VEGAS STYLE CSS -->
    <link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
     <link rel="stylesheet" type="text/css" href="Developper/LoginRegistrationForm/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="Developper/LoginRegistrationForm/css/style2.css" />
		<link rel="stylesheet" type="text/css" href="Developper/LoginRegistrationForm/css/animate-custom.css" />
   
                <link rel="stylesheet" href="../development-bundle/jquery-ui-1.8.9.custom.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="width: 100%;height: 600px;background-color: #8b1010;">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Admin_Menus.jsp"/>
            </div>
            <center>
                <div style="background-color: white;width: 90%;height: 590px;overflow-y:  scroll;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;">
             
                <br>
                <a href="#toregister"> <h3 style="color: black">Click Here To Add New Office</h3></a>
                 <div class="container">
            <!-- Codrops top bar -->
            <div id="myDialog" title="This is the title!">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean sollicitudin. Sed interdum pulvinar justo. Nam iaculis volutpat ligula. Integer vitae felis quis diam laoreet ullamcorper. Etiam tincidunt est vitae est.</div>
        
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                      <a class="hiddenanchor" id="list"></a>
                    <div id="wrapper" style="width: 90%;margin-top: -50px;">
                        
                        <div id="register" title="This is the title!" class="animate form" style="width:60%;margin-left: 250px;">
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
                        
                          
                        <div class="login" class="animate form" style="width: 90%">
                              <h3 style="color: black">All  Regus Offices List</h3>
                       
                                       <table border="1" class="table table-striped" id="sample_1">
                                          <thead>
                                              <tr>
                                                  <th>No</th>
                                                  <th>Office Address</th>
                                                  <th>Capacity</th>
                                                  <th>Office Size</th>
                                                  <th>Type</th>
                                                  <th>Monthly Price</th>
                                                 <th>Additional Information</th>
                                                  </tr>
                                          </thead>
                                          <tbody>
                                              <%
                                                   List<Office>ls=Office.getList();
                                               int no=1;
                                                for(int i=0;i<ls.size();i++)
                                                    
                                                {
                                                       %>
                                              <tr>
                                                  <td><%=no %></td>
                                                 <td><%=ls.get(i).getOfficeAddress()%></td>
                                                  
                                                  <td><%=ls.get(i).getCapacity()%></td>
                                                   <td><%=ls.get(i).getOfficeSize()%></td>
                                                    <td><%=ls.get(i).getOfficeType()%></td>
                                                    <td><%=ls.get(i).getCost()%></td>
                                                    <td><%=ls.get(i).getOtherDetails()%></td>
                                                      <%
                                                     
                                                    %>
                                                   
                                                   
                                                 
                                                  
                                              </tr>
                                              <%
                                                    no++;
                                                       }
                                                
                                                    %>
                                          </tbody>
                                      </table>
                           <%
                       
                       
                       
                       %>
                        </div>			
                    </div>
                </div>  
            </section>
        </div>
            </div>
            </center>
             <div style="width: 100%;height: auto;">
                 <jsp:include page="Footer.jsp"/>
            </div>
        </div>
            
    </body>
    
   <script src="development-bundle/jquery-1.4.4.js"></script>
        <script src="development-bundle/jquery.ui.core.js"></script>
        <script src="development-bundle/jquery.ui.widget.js"></script>
        <script src="development-bundle/jquery.ui.position.js"></script>
        <script src="development-bundle/jquery.ui.dialog.js"></script>
        <script>
			(function($){
				$("#myDialog").dialog();
			})(jQuery);
		</script>
</html>
