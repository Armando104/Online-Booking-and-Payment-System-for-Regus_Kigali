 

<%@page import="java.util.Date"%>
<%@page import="pack.*"%>
<%@page import="java.util.List"%>
 
<%@page import="pack.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    User u = (User) session.getAttribute("admin");
    if (u == null) {
%>
<jsp:forward page="index.jsp"/>
<%        }

%>

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
        <title>Your Office Booking</title>
    </head>
    <body style="background-color: black">
        <div style="width: 100%;height: 600px;background-color: #8b1010">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Admin_Menus.jsp"/>
            </div>
            <center>
                <div style="background-color: white; width: 90%;height: 590px;overflow: scroll;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;">

                    <br><br> <br>
                   
                    <h3 style="color: black">Reports Generating</h3>
                     <h3><a href="Client_Reports.jsp" target="_blank">Print All Office</a></h3>
                    <h3><a href="Client_Reports.jsp" target="_blank">Print All Clients</a></h3>
                    <h3><a href="Booking_Report.jsp" target="_blank">Print All Bookings Reports</a></h3>
                    <h3><a href="Rentals_Report.jsp" target="_blank">Print All Office Rentals Reports</a></h3>
                    <h3><a href="Rentals_Report_1.jsp" target="_blank">Export All Office Rentals To Excel</a></h3>
                </div>
            </center>
        </div>
    </body>

    <script src="Dyanmic-data-table/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="Dyanmic-data-table/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="Dyanmic-data-table/js/DT_bootstrap.js"></script>
    <script src="Dyanmic-data-table/js/dynamic-table.js"></script>
</html>
