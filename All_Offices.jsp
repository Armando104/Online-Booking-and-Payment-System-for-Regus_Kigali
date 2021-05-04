 

<%@page import="pack.*"%>
<%@page import="java.util.List"%>
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
<jsp:useBean id="o" scope="request" class="pack.Office"/>
<jsp:useBean id="st" scope="request" class="pack.Client"/>
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
        <title>Regus Rwanda Offices</title>
    </head>
    <body style="background-color: black">
        <div style="width: 100%;height: 600px;background-color: #8b1010">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Admin_Menus.jsp"/>
            </div>
            <center>
                <div style="background-color: white;width: 90%;height: 590px;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;overflow-y: scroll">
             
                <br><br> 
                <button class="btn btn-danger">
                     <a href="Office_Form.jsp"> <h3 style="color: white">Click Here To Add New Office</h3></a>
               
                </button>
                ${o.msg}
                <u> <h3 style="color: black">All  Regus Offices List</h3></u>
                       
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
<!--                                                  <th>Add Office Image</th>-->
                                                  <th>View</th>
                                                   <th>Update</th>
                                                   <th>Delete</th>
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
                                                    <td><%="$"+ls.get(i).getCost()%></td>
<!--                                                    <td><%=ls.get(i).getOtherDetails()%></td>-->
                                                    <td><button class="btn btn-inverse">
                                                            <a href="Image_upload_Form.jsp?xo=<%=ls.get(i).getOfficeId()%>" style="color: white">Add Image
                                                        </a>
                                                        </button></td>
                                                        <td><button class="btn btn-success">
                                                                <a style="color: white" href="View_Office_Images.jsp?xo=<%=ls.get(i).getOfficeId()%>">View Images</a>
                                                            </button></td>
                                                    <td><button class="btn btn-warning">
                                                            <a style="color: white" href="Update_Office.jsp?xo=<%=ls.get(i).getOfficeId()%>">Update</a>
                                                            </button></td>
                                                            <td><button class="btn btn-danger">
                                                                    <a style="color: white" href="Delete_Office.jsp?xo=<%=ls.get(i).getOfficeId()%>">Delete</a>
                                                            </button></td>
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
