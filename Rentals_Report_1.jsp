 

<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="pack.*"%>
<%@page import="java.util.*"%>
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
      <script src="tableToExcel.js"></script>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
         
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
<!--                    <img src="a.imgs/Logo_Regus.png" width="92" height="47" alt="Logo_Regus" style="float: left"/>-->

                  
                       <input type="button" class="btn btn-danger" style="width: 50%;" onclick="tableToExcel('testTable', 'Office Rentals Report')" value="Export to Excel">
        <br>

                    <table border="1"   id="testTable"  style="auto">
                        
                         
                         
                        
                          <caption><h3 style="color: black">REGUS RWANDA-KIGALI</h3></caption>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Client</th>
                                <th>Client Address</th>
                                <th>Office Address</th>
                                <th>Office Type</th>
                                <th>Monthly Cost</th>
                                <th>Renting Months</th>
                                <th>Starting Date</th>
                                <th>Ending Date</th>
                                
                                <th>Rent Status</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<OfficeRental> ls = OfficeRental.getList();
                                int no = 1;
                                System.out.print("SIZE:" + ls.size());
                                for (int i = 0; i < ls.size(); i++) {

                                    Office ob = Office.getOffice_id(ls.get(i).getOfficeId() + "");
                                    if (ob != null) {
                                        Client cl = Client.getClient_id(ls.get(i).getClientId() + "");
                                     {
                                            //OfficePayment p = OfficePayment.getOfficePayment_Booking(ls.get(i).getBookingId() + "");
                                   Calendar cal=new GregorianCalendar();
                                   cal.setTime(ls.get(i).getRentStartDate());
                                   
                                    Calendar cal1=new GregorianCalendar();
                                   cal1.setTime(ls.get(i).getRentEndDate());
                            %>
                            <tr>
                                <td><%=no%></td>
                                 <td><%=cl.getNames() %></td>
                                    <td><%=cl.getAddress()+","+cl.getTel()+","+cl.getEmail() %></td>
                                    
                                    <td><%=ob.getOfficeAddress()%></td>

                                <td><%=ob.getOfficeType()%></td>
                                <td><%=ob.getCost() + " $"%></td>
                                
                                <td><%=cal1.get(Calendar.MONTH)-cal.get(Calendar.MONTH)+" Month(s)" %></td>
                                <td><%=ls.get(i).getRentStartDate()%></td>
                                 <td><%=ls.get(i).getRentEndDate()%></td>
                               
                                
                                 <%
                                            
                                            if(ls.get(i).getRentalStatus().equalsIgnoreCase("ongoing")){
                                            %>
                                            
                                            <td style=""><%=ls.get(i).getRentalStatus()%></td>
                                            <%
                                            }else{
                                             %>
                                            
                                            <td><%=ls.get(i).getRentalStatus()%></td>
                                            <%
                                           
                                            }
                                            
                                            %>




                            </tr>
                            <%
                                            no++;
                                        }
                                    }
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
                         
            </center>
             
        </div>
    </body>
     
</html>
