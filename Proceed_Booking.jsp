 

<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="pack.*"%>
<%@page import="pack.User"%>

<!DOCTYPE html>
<%
    User u = (User) session.getAttribute("client");
    String id = request.getParameter("id");
    session.setAttribute("pending", id);
    if (u == null) {
        session.setAttribute("x", "<h3 style=color:green>Sign In Or Sign Up If You Don't have Account Before Make Your Office Booking</h3>");
        response.sendRedirect("index.jsp#contact");
    } else {
        Client cl = Client.getClient_User_id(u.getUser_id() + "");

%>
<%@page import="java.util.List"%>
<jsp:useBean id="b" scope="request" class="pack.OfficeBooking"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>JSP Page</title>
    </head>
    <body style="background-color: black">
        <div style="width: 100%;height: 580px;background-color: #8b1010">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Client_Menus.jsp"/>
            </div>
            <center>
                <div style="width: 90%;height: 584px;overflow-y: scroll;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;background-color: white">

                    <br><br>

                    <%

                        Office ox = Office.getOffice_id(id);

                    %>
                    ${b.clientId}
                    <form action="Booking_Processing.jsp" id="basic_math">
                        <table border="0">

                            <tbody>
                                <tr>
                                    <td><input type="hidden" name="clientId" value="<%=cl.getClientId()%>" /><input type="hidden" name="officeId" value="<%=id%>" /></td>
                                    <td>
                                        <h3 style="color: black">Office Booking Form</h3>  
                                    </td><td></td>
                                </tr>
                                <%
                                    Calendar cal = new GregorianCalendar();
                                    Date dd = new Date();

                                %>
                                <tr>
                                    <td></td>
                                    <td>Booking Date<br>
                                        <input type="text" name="officeAddress" value="<%=dd.toLocaleString()%>" style="height: 35px;width: 350px;" readonly="" /></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <%
                                        cal.add(Calendar.DAY_OF_MONTH, 3);
                                        Date d = cal.getTime();

                                    %>
                                    <td><br>Payment Deadline<br><input type="text" name="cost" value="<%=d.toLocaleString()%>" style="height: 35px;width: 350px;" readonly=""/></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><br>Monthly Renting Cost In <b>USD</b><br> <input type="text" class="form-control input-sm text-right" id="C5" name="C5" data-cell="C5" data-format="0,0[.]00" data-formula="" value="<%=ox.getCost()%>" readonly="" style="height: 35px;width: 350px;">
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><br>Renting Months<br><input type="text" class="form-control input-sm text-right" id="E5" name="months" data-cell="E5" data-format="0,0[.]00" data-formula="" style="height: 35px;width: 350px;" value="3"> 
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><br>Starting On<br><input type="date" class="form-control input-sm text-right" name="rent_starting_datev" style="height: 35px;width: 350px;" value=""> 
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>Amount To Be Paid In <b>USD</b>(Click The Below Field)<br><input type="text" class="form-control input-sm text-right" id="G5" name="G5" data-cell="G5" data-format="0,0[.]00" data-formula="C5*E5" style="height: 35px;" readonly="">
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>




                                    </td>
                                    <td>

                                    </td>
                                    <td>


                                    </td>
                                </tr>
                                <tr>

                                    <td></td>
                                    <td><br><input type="submit" value="Submit" name="op" class="btn btn-inverse" /></td>
                                    <td></td>
                                </tr>

                            </tbody>
                        </table>

                    </form>


                </div>
            </center>
            <div style="width: 100%;height: auto;">
                <jsp:include page="Footer.jsp"/>
            </div>
        </div>
    </body>

    <script src="js/jquery-calx-sample-2.2.7.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script>
        $('#basic_math').calx();

        $('#show_formula').click(function(e) {
            e.preventDefault();

            if ($(this).attr('data-shown') == '0') {
                $('[data-formula],[data-cell]').each(function() {
                    $(this).after('<span class="formula">' + $(this).attr('data-cell') + ($(this).attr('data-formula') ? ' = ' + $(this).attr('data-formula') : '') + '&nbsp;</span>');
                });

                $(this).attr('data-shown', 1).html('Hide Formula');
            } else {
                $('span.formula').remove();
                $(this).attr('data-shown', 0).html('Show Formula');
            }
        });
    </script>
</html>
<%
    }
%>
