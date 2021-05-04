 

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
        <title>Regus Office Booking Payment</title>
    </head>
    <body style="background-color: black">
        <div style="width: 100%;height: 600px;background-color: #8b1010">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Admin_Menus.jsp"/>
            </div>
            <center>
                <div style="background-color: white; width: 90%;height: 590px;overflow: scroll;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;">

                    <br><br> <br>
                    ${st.msg}
                    <h3 style="color: black">Offices Bookings Payment(s)</h3>

                    <table border="1" class="table table-striped" id="sample_1" style="width: 1600px;">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Client</th>
                                 <th>Client Contact</th>
                                <th>Payment Date</th>
                                <th>Payment For Office Address</th>
                                <th>Office Type</th>
                                <th>Monthly Rent Cost</th>
                                 <th>Booked Months</th>
                                 <th>Amount To Be Paid</th>
                                <th>Amount Paid</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<OfficePayment> ls = OfficePayment.getList();
                                int no = 1;
                                System.out.print("SIZE:" + ls.size());
                                for (int i = 0; i < ls.size(); i++) {
                                    OfficeBooking ofb = OfficeBooking.getBooking_ID(ls.get(i).getBookingId() + "");
                                    Office ob = Office.getOffice_id(ofb.getOfficeId() + "");
                                    if (ob != null) {
                                        Client cl = Client.getClient_id(ofb.getClientId() + "");

                                        //if (ls.get(i).getClientId() == cl.getClientId()) {
                                        OfficePayment p = OfficePayment.getOfficePayment_Booking(ls.get(i).getBookingId() + "");

                            %>
                            <tr>
                                <td><%=no%></td>
                                <td><%=cl.getNames()%></td>
                                <td><%=cl.getAddress() + ",+" + cl.getTel() + "," + cl.getEmail()%></td>
                                 <td><%=ls.get(i).getPaymentDate()%></td>
                                <td><button class="btn btn-info" style="width: 100%"><a style="width: 100%;color: white" href="View_Office_Images.jsp?xo=<%=ob.getOfficeId()%>"><%=ob.getOfficeAddress()%></a></button></td>

                                <td><%=ob.getOfficeType()%></td>
                                <td><button class="btn btn-inverse" style="width: 100%"><%=ob.getCost() + " $"%></button></td>
                                <td><%=ofb.getMonths()+" Month(s)" %></td>
                               
                                <td><button class="btn btn-danger" style="width: 100%"><%=(ob.getCost()*ofb.getMonths()) + " $"%></button></td>
                                <td><button class="btn btn-success" style="width: 100%"><%=p.getAmount() + " $"%></button></td>
                               </tr>
                            <%
                                        no++;
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
