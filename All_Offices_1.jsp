 

<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<jsp:useBean id="st" scope="request" class="pack.Office"/>
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
    <body>
        <div style="width: 100%;height: 600px;">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Admin_Menus.jsp"/>
            </div>
            <center>
                <div style="width: 90%;height: 590px;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;">
             
                <br><br> <br>
                <a href="Office_Form.jsp"> <h3 style="color: black">Click Here To Add New Office</h3></a>
                ${st.msg}
                     <h3 style="color: black">All  Regus Offices List</h3>
                       
                                       <table border="1" class="table table-striped" id="sample_1">
                                          <thead>
                                              <tr>
                                                  <th>No</th>
                                                  <th>Office Address</th>
                                                  <th>Capacity</th>
                                                  <th>Office Size</th>
                                                  <th>Type</th>
                                                  <th>Monthly Price</th>
                                                 <th>Additional Information</th>
                                                  </tr>
                                          </thead>
                                          <tbody>
                                              <%
                                                   List<Office>ls=Office.getList();
                                               int no=1;
                                                for(int i=0;i<ls.size();i++)
                                                    
                                                {
                                                       %>
                                              <tr>
                                                  <td><%=no %></td>
                                                 <td><%=ls.get(i).getOfficeAddress()%></td>
                                                  
                                                  <td><%=ls.get(i).getCapacity()%></td>
                                                   <td><%=ls.get(i).getOfficeSize()%></td>
                                                    <td><%=ls.get(i).getOfficeType()%></td>
                                                    <td><%=ls.get(i).getCost()%></td>
                                                    <td><%=ls.get(i).getOtherDetails()%></td>
                                                      <%
                                                     
                                                    %>
                                                   
                                                   
                                                 
                                                  
                                              </tr>
                                              <%
                                                    no++;
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
