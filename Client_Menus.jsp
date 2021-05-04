<%-- 
    Document   : Admin_Menus
    Created on : Apr 4, 2016, 2:07:37 PM
    Author     : PREFERRED MICROF
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="pack.OfficeBooking"%>
<%@page import="pack.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    User u = (User) session.getAttribute("client");
    if (u == null) {
%>
<jsp:forward page="index.jsp"/>
<%        }
 List<OfficeBooking> ls = OfficeBooking.getList();
                                int no = 1;
                                System.out.print("SIZE:" + ls.size());
                                for (int i = 0; i < ls.size(); i++) {
                                if(ls.get(i).getBookingDeadline().before(new Date())){
                    System.out.println("Expired");
                    ls.get(i).delete();
                }else{
                
                }
                                }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
      <!-- VEGAS STYLE CSS -->
    <link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top scrollclass" style="background-color: #fff;border-bottom: 1px solid #8b1010">
        <div class="container" style="background-color: white;color: black">
            <div class="navbar-header" style="background-color: white;color: black">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp" style="margin-top: -20px;margin-left: -170px;"><img src="a.imgs/Logo_Regus.png" width="92" height="47" alt="Logo_Regus"/>
                </a>
            </div>
            <div class="navbar-collapse collapse" style="color: black">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Profile.jsp" style="color: black">Hello <%=u.getNames()+"      "  %></a></li>
                    <%
                        String h=(String)session.getAttribute("pending");
                        if(h==null){
                        %>
                     <li><a href="Booking_Office.jsp" style="color: black">Proceed Office Booking</a></li>
                     
                    
                    <%
                        
                        }else{
                        %>
                        <li><a href="Proceed_Booking.jsp?id=<%=h %>" style="color: black">Continue Office Booking</a></li>
                     
                    
                    <%
                        
                        }
                        
                        
                        %>
                        <li><a href="Cancel_Booking.jsp" style="color: black">Cancel Office Booking</a></li>
                    
                    <li><a href="Client_Booking_Offices.jsp" style="color: black">Your Offices Bookings</a></li>
                     <li><a href="Client_Office_Rentals.jsp" style="color: black">Your Offices Rentals</a></li>
                    
                     <li><a href="Logout.jsp" style="color: black">Logout</a></li>
                    
                </ul>
            </div>
           
        </div>
    </div>
    </body>
</html>
