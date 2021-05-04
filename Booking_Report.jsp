 

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

                 
                     <h3 style="color: black">Offices Bookings Report</h3>

                    <table border="1" class="table table-striped" id="sample_1" style="width: 2300px">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Client</th>
                                 <th>Client Contact</th>
                                   <th>Office Address</th>
                                <th>Office Type</th>
                                <th>Monthly Cost</th>
                                <th>Booking Date</th>
                                <th>Payment Deadline Date</th>
                                <th>Payment Date</th>
                              
                                <th>Renting Months</th>
                                <th>Tot Amount To Be Paid</th>
                                <th>Tot Amount Paid</th>
                                <th>Tot Remain Amount</th>
                                <th>Booking Status</th>
                                <th>Proceed Payment</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<OfficeBooking> ls = OfficeBooking.getList();
                                int no = 1;
                                System.out.print("SIZE:" + ls.size());
                                for (int i = 0; i < ls.size(); i++) {
                                    if(ls.get(i).getBookingDeadline().before(new Date())){
                    System.out.println("Expired");
                    ls.get(i).delete();
                                    Office ob = Office.getOffice_id(ls.get(i).getOfficeId() + "");
                                    if (ob != null) {
                                            Client cl = Client.getClient_id(ls.get(i).getClientId() + "");
                                            
                                        //if (ls.get(i).getClientId() == cl.getClientId()) {
                                        OfficePayment p = OfficePayment.getOfficePayment_Booking(ls.get(i).getBookingId() + "");
                                        
                                      %>
                                <tr>
                                <td><%=no%></td>
                                  <td><%=cl.getNames() %></td>
                                    <td><%=cl.getAddress()+","+cl.getTel()+","+cl.getEmail() %></td>
                                    <td><button class="btn btn-info" style="width: 100%"><a style="width: 100%;color: white" href="View_Office_Images.jsp?xo=<%=ob.getOfficeId()%>"><%=ob.getOfficeAddress()%></a></button></td>

                                <td><%=ob.getOfficeType()%></td>
                                <td><%=ob.getCost() + " $"%></td>
                                <td><%=ls.get(i).getBookingDate()%></td>
                                <td><%=ls.get(i).getBookingDeadline()%></td>
                                <%
                                    if (ls.get(i).getBookingStatus().equalsIgnoreCase("pending")) {
                                %>
                                <td style="background-color: yellow;color: black;"><%="--Not Found--"%></td>
                                <%
                                } else {
                                %>
                                <td style="background-color: green;color: white;"><%=p.getPaymentDate()%></td>
                                <%
                                    }
                                %>

                                
                                <td><%=ls.get(i).getMonths() + " Months"%></td>

                                <td><%=(ob.getCost() * ls.get(i).getMonths()) + "$"%></td>
                                <td><%=(OfficePayment.getSum_Of_Paid_Amount(ls.get(i).getBookingId() + "")) + "$"%></td>
                                <td><%=((ob.getCost() * ls.get(i).getMonths()) - OfficePayment.getSum_Of_Paid_Amount(ls.get(i).getBookingId() + "")) + "$"%></td>


                                <%
                                    if (ls.get(i).getBookingStatus().equalsIgnoreCase("pending")) {
                                %>
                                <td style="background-color: yellow;color: black;"><%=ls.get(i).getBookingStatus()%></td>
                                <td><button class="btn btn-danger" style="width: 100%">Less Payment</button></td>

                                <%
                                } else {
                                %>
                                <td style="background-color: green;color: white;"><%=ls.get(i).getBookingStatus()%></td>
                                <%
                                    if (ob.getCost() * ls.get(i).getMonths() < OfficePayment.getSum_Of_Paid_Amount(ls.get(i).getBookingId() + "")) {
                                %>
                                <td><button class="btn btn-danger" style="width: 100%">Less Payment</button></td>
                                <%
                                } else {
                                %>
                                <td><button class="btn btn-success" style="width: 100%">Full Payment Made</button></td>
                                <%                                                }

                                %>

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
