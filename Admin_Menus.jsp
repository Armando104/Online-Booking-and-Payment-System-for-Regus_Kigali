<%-- 
    Document   : Admin_Menus
    Created on : Apr 4, 2016, 2:07:37 PM
    Author     : PREFERRED MICROF
--%>

<%@page import="pack.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    User u = (User) session.getAttribute("admin");
    if (u == null) {
%>
<jsp:forward page="index.jsp"/>
<%        }

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
        <div class="container" style="background-color: white;color: black;width: 100%">
            <div class="navbar-header" style="background-color: white;color: black;float: left;margin-left: 30px">
                <ul class="nav navbar-nav navbar-left">
                    <li><a href="index.jsp" style="color: black"><img src="a.imgs/Logo_Regus.png" width="92" height="47" alt="Logo_Regus"/></a></li>
            
                    
                </ul>
                
            </div>
            <div class="navbar-collapse collapse" style="color: black;float: left;margin-top: 10px">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Admin_Profile.jsp" style="color: black">Hello <%=u.getNames()+"      "  %></a></li>
                     <li><a href="dashboard/Admin_DashBoard.jsp" style="color: black">Dashboard</a></li>
                     <li><a href="All_Clients.jsp" style="color: black">Registered Clients</a></li>
                     <li><a href="All_Offices.jsp" style="color: black">Offices</a></li>
                     <li><a   href="Admin_Booking_Offices.jsp" class="active" style="color: black">Offices Bookings</a></li>
                   
                     <li><a href="Payment_Made.jsp" style="color: black">Bookings Payment</a></li>
                    <li><a href="Admin_Office_Rentals.jsp" style="color: black">Rentals</a></li>
                    <li><a href="Reports.jsp" style="color: black">Reports</a></li>
                     <li><a href="Logout.jsp" style="color: black">Logout</a></li>
                    
                </ul>
            </div>
           
        </div>
    </div>
    </body>
</html>
