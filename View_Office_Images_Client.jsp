 

<%@page import="pack.Client"%>
<%@page import="java.util.List"%>
<%@page import="pack.*"%>
<%@page import="java.util.List"%>
   <jsp:useBean id="o" scope="request" class="pack.Office"/>
    <jsp:useBean id="xx" scope="request" class="pack.OfficeImage"/>
    
<%@page import="pack.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 

 <%
    User u = (User) session.getAttribute("client");
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
          <link rel="stylesheet" href="uplodad_files/formoid1/formoid-solid-dark.css" type="text/css" />
           <script type="text/javascript" src="uplodad_files/formoid1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="office_form1_files/formoid1/formoid-solid-red.css" type="text/css" />
        <script type="text/javascript" src="office_form1_files/formoid1/jquery.min.js"></script>
    </head>
    <body style="background-color: black">
        <div style="width: 100%;height: 600px;background-color: #8b1010;">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Client_Menus.jsp"/>
            </div>
            
                <div style="width: 90%;height: 590px;background-color: white;margin-left: 70px;overflow-y: scroll;border-left: 0px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;">
                    <br>
                    <br>
                    <%
                        
                        String x=request.getParameter("xo");
                        
                        Office of=Office.getOffice_id(x);
                        
                        %>
                        
                        <center>
                            <u>   <h3>Office Information&Images</h3></u>
                            <table border="0">
                              
                                <tbody>
                                    <tr>
                                        <td>Office Address</td>
                                        <td><b><%=":"+of.getOfficeAddress() %></b></td>
                                    </tr>
                                    <tr>
                                        <td>Office Type</td>
                                        <td><b><%=":"+of.getOfficeType()%></b></td>
                                    </tr>
                                    <tr>
                                        <td>Maximum Person(s)</td>
                                        <td><b><%=":"+of.getCapacity()%></b></td>
                                    </tr>
                                     <tr>
                                        <td>Office Size(Area)</td>
                                        <td><b><%=":"+of.getOfficeSize()+""%></b></td>
                                    </tr>
                                    <tr>
                                        <td>Monthly Rent Cost(USD)</td>
                                        <td><b><%=":"+of.getCost()+"$"%></b></td>
                                    </tr>
                                      <tr>
                                        <td>Other Information Regarding Office</td>
                                        <td><b><%=":"+of.getOtherDetails()+""%></b></td>
                                    </tr>
                                </tbody>
                            </table>
                                    <hr style="color: red">
                                    
                                            <%
                                                List<OfficeImage>l=OfficeImage.getList();
                                                for(int i=0;i<l.size();i++){
                                                    if(l.get(i).getOfficeId()==of.getOfficeId()){
                                                %>
                                             <div style="border: 3px solid #cccccc;border-radius: 5px;float: left;width: 40%;height: 400px;margin-left: 60px;margin-right: 10px;margin-bottom: 10px;">
                                                 <img src="Office_Images/<%=l.get(i).getFileName() %>" width="680" height="400" alt="3!anigif1" style="border: 0px solid #cccccc;border-radius: 0px;float: left;width: 100%;height: 400px;"/>
                                                 
                                                    </div>
                                            
                                            <%
                                                }
                                                }
                                                    %>
                                     
                                     <button style="background-color: #8b1010;color: white;width: 100%">
                                           <td><a  style="background-color: #8b1010;color: white" href="Proceed_Booking.jsp?id=<%=of.getOfficeId()%>">Proceed Booking Now</a></td>
                              
                                     </button>
                                           <hr>
                        </center>
                      
                    
                </div>
           
           
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
