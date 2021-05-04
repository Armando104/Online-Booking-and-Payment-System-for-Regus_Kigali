 

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="pack.Client"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pack.User"%>
 
<!DOCTYPE html>
<%
    User u = (User) session.getAttribute("admin");
    if (u == null) {
%>
<jsp:forward page="index.jsp"/>
<%        }else{
    
u.UnlockUser("unlocked");
    }

%>
<!DOCTYPE html>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
         <script language="javascript" type="text/javascript">
            function printDiv(divID) {
                //Get the HTML of div
                var divElements = document.getElementById(divID).innerHTML;
                //Get the HTML of whole page
                var oldPage = document.body.innerHTML;

                //Reset the page's HTML with div's HTML only
                document.body.innerHTML =
                        "<html><head><title></title></head><body><center>" +
                        divElements + "</center></body>";

                //Print Page
                window.print();

                //Restore orignal HTML
                document.body.innerHTML = oldPage;


            }
        </script>
    </head>
    <body>
        <div style="width: 100%;height: auto;">
            
            <center>
                <div id="s">
                    <%
                      String date=new GregorianCalendar().get(Calendar.DAY_OF_MONTH)+"/"+(new GregorianCalendar().get(Calendar.MONDAY)+1)+"/"+(new GregorianCalendar().get(Calendar.YEAR));
            
                     %>
        <div id="ds" style="width: 95%;height: auto;background-color: white;color: black;border: 0px #000 solid">
        
                <div style="width: 90%;height: auto;background-color: white;border-left: 0px dotted #cccccc;border-right: 0px dotted #cccccc;padding: 20px;">
                    <img src="a.imgs/Logo_Regus.png" width="92" height="47" alt="Logo_Regus" style="float: left"/>

                 
                    <h3 style="color: black">All Registered Regus Clients Report</h3>
                       
                                       <table border="1" class="table table-bordered" >
                                          <thead>
                                              <tr>
                                                  <th>No</th>
                                                  <th>Names</th>
                                                  <th>Home Address</th>
                                                  <th>Tel</th>
                                                  <th>Email Address</th>
                                                 <th>Registered Since</th>
                                                 
                                                  </tr>
                                          </thead>
                                          <tbody>
                                              <%
                                                   List<Client>ls=Client.getList();
                                               int no=1;
                                                for(int i=0;i<ls.size();i++){
                                                    
                                                
                                                       %>
                                              <tr>
                                                  <td><%=no %></td>
                                                 <td><%=ls.get(i).getNames()%></td>
                                                  
                                                  <td><%=ls.get(i).getAddress()%></td>
                                                   <td><%=ls.get(i).getTel()%></td>
                                                    <td><%=ls.get(i).getEmail()%></td>
                                                       <td><%=ls.get(i).getRegistrationDate()%></td>        
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
             <h5 style="margin-left: -830px"><%="Printed by: "+u.getNames()  %></h5>
                       <br> 
                       <h5 style="margin-left: -830px"><%="________________" %></h5>
                        <h5 style="margin-right: -830px"><%="Printed On "+date %></h5>
                       <br> 
             </div>
              
        </div>
                         <br>
                            <table border="0">

                        <tbody>
                            <tr>
                                 
                                <td><input type="button" value="Print The Above Report" onclick="javascript:printDiv('s')" class="btn btn-inverse" style="width: 500px;"/></td>
                            </tr>
                        </tbody>
                    </table>   
            </center>
             
        </div>
    </body>
     
</html>
