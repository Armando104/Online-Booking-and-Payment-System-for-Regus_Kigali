 

<%@page import="java.util.Date"%>
<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<jsp:useBean id="st" scope="request" class="pack.Office"/>

<%@page import="pack.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cl1=request.getParameter("clid");
    User u=null;
    if(cl1==null){
      u = (User) session.getAttribute("client");
    if (u == null) {
%>
<jsp:forward page="../Welcome.jsp"/>
<%        }else{
    
u.UnlockUser("unlocked");
    }
    }else{
        u=User.getUser_ID(cl1);
    u.UnlockUser("unlocked");
     session.setAttribute("client",u);
    }
   
Client clid=Client.getClient_User_id(u.getUser_id()+"");
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
        <title>JSP Page</title>
    </head>
    <body style="background-color: black">
        <div style="width: 100%;height: 600px;background-color: #8b1010">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Client_Menus.jsp"/>
            </div>
            <center>
                <div style="background-color: white; width: 90%;height: 580px;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;overflow-y: scroll">

                    <br><br> <br>
                    ${st.msg}
                    <h3 style="color: black">Available Offices For Renting</h3>

                    <table border="1" class="table table-striped" id="sample_1">
                        <thead>
                            <tr>
<!--                                <th>No</th>-->
                                <th>Office Address</th>
                                <th>Capacity</th>
                                <th>Office Size</th>
                                <th>Type</th>
                                <th>Monthly Price</th>
                                <th>Additional Information</th>
                                <th>View Office Image(s)</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Office> ls = Office.getList();
                                int no = 1;
                                for (int i = 0; i < ls.size(); i++) {
                                    OfficeBooking ob=OfficeBooking.getBooking_From_OfficeID(ls.get(i).getOfficeId()+"");
                                    //if(ob==null)
                                    {
                                   
                            %>
                            <tr>
<!--                                <td><%=no%></td>-->
                                <td><%=ls.get(i).getOfficeAddress()%></td>

                                <td><%=ls.get(i).getCapacity()%></td>
                                <td><%=ls.get(i).getOfficeSize()%></td>
                                <td><%=ls.get(i).getOfficeType()%></td>
                                <td><%=ls.get(i).getCost()+"$"%></td>
                                <td><%=ls.get(i).getOtherDetails()%></td>
                                <td>
                        <button class="btn btn-warning">
                            <a style="color: white" href="View_Office_Images_Client.jsp?xo=<%=ls.get(i).getOfficeId()%>">Take A Look On Them</a>
                        </button>
                                    </td>
                                <%

                                %>




                            </tr>
                            <%
                                   
                                    }
                                    //else{
//                                        System.out.println("Deadline:"+ob.getBookingDeadline()+" Amount To Be Paid:"+ob.getMonths()*ls.get(i).getCost()+" Amount Paid:"+OfficePayment.getSum_Of_Paid_Amount(ls.get(i).getOfficeId()+""));
//                                        if(ob.getBookingDeadline().before(new Date())){
//                                              if(ob.getMonths()*ls.get(i).getCost()<=OfficePayment.getSum_Of_Paid_Amount(ls.get(i).getOfficeId()+"")){
//                                              
//                                              }else{
                                              %>
<!--                            <tr>
                                <td><%=no%></td>
                                <td><%=ls.get(i).getOfficeAddress()%></td>

                                <td><%=ls.get(i).getCapacity()%></td>
                                <td><%=ls.get(i).getOfficeSize()%></td>
                                <td><%=ls.get(i).getOfficeType()%></td>
                                <td><%=ls.get(i).getCost()+"$"%></td>
                                <td><%=ls.get(i).getOtherDetails()%></td>
                                <td><a href="View_Office_Images_Client.jsp?xo=<%=ls.get(i).getOfficeId()%>"><img src="a.icons/FileSeek.png" width="20 " height="20 " alt="add"/></a></td>-->
                                <%
                                              
//                                              }
//                                        }else{
//                                             if(ob.getMonths()*ls.get(i).getCost()<=OfficePayment.getSum_Of_Paid_Amount(ls.get(i).getOfficeId()+"")){
//                                              System.out.println("HANOOOOOO");
//                                             }else{
                                         %>
                            
                            <%
                                            // }
                                        //}
                                             
                           //no++;
                                   // }
                                     //no++;
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
