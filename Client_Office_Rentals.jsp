 

<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="pack.*"%>
<%@page import="java.util.List"%>


<%@page import="pack.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    User u = (User) session.getAttribute("client");
    if (u == null) {
%>
<jsp:forward page="index.jsp"/>
<%        }
    Client cl = Client.getClient_User_id(u.getUser_id() + "");
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
        <title>Your Offices Rentals</title>
    </head>
    <body style="background-color: black">
        <div style="width: 100%;height: 600px;background-color: #8b1010">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Client_Menus.jsp"/>
            </div>
            <center>
                <div style="background-color: white; width: 90%;height: 590px;overflow: scroll;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;">

                    <br><br>
                    ${st.msg}
                    <h3 style="color: black">Your Offices Rentals</h3>

                    <table border="1" class="table table-striped" id="sample_1" style="">
                        <thead>
                            <tr>
                                <th>No</th>
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
                                        if (ls.get(i).getClientId() == cl.getClientId()) {
                                            //OfficePayment p = OfficePayment.getOfficePayment_Booking(ls.get(i).getBookingId() + "");
                                   Calendar cal=new GregorianCalendar();
                                   cal.setTime(ls.get(i).getRentStartDate());
                                   
                                    Calendar cal1=new GregorianCalendar();
                                   cal1.setTime(ls.get(i).getRentEndDate());
                            %>
                            <tr>
                                <td><%=no%></td>
                                 <td><a href="View_Office_Images_Client.jsp?xo=<%=ob.getOfficeId()%>"><%=ob.getOfficeAddress()%></a></td>

                                <td><%=ob.getOfficeType()%></td>
                                <td><%=ob.getCost() + " $"%></td>
                                
                                <td><%=cal1.get(Calendar.MONTH)-cal.get(Calendar.MONTH) %></td>
                                <td><%=ls.get(i).getRentStartDate()%></td>
                                 <td><%=ls.get(i).getRentEndDate()%></td>
                               
                                
                                 <%
                                            
                                            if(ls.get(i).getRentalStatus().equalsIgnoreCase("ongoing")){
                                            %>
                                            
                                            <td style=""><button class="btn btn-success"><%=ls.get(i).getRentalStatus()%></button></td>
                                            <%
                                            }else{
                                             %>
                                            
                                            <td><button class="btn btn-danger" style="width: 100%;"><%=ls.get(i).getRentalStatus()%></button></td>
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
            </center>
            <div style="width: 100%;height: auto;">
                <jsp:include page="Footer.jsp"/>
            </div>
        </div>
    </body>

    <script src="Dyanmic-data-table/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="Dyanmic-data-table/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="Dyanmic-data-table/js/DT_bootstrap.js"></script>
    <script src="Dyanmic-data-table/js/dynamic-table.js"></script>
</html>
