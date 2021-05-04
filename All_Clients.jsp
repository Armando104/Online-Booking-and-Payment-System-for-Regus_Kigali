 

<%@page import="pack.Client"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<!DOCTYPE html>
<jsp:useBean id="o" scope="request" class="pack.Client"/>
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
        <title>All Registered Regus Clients</title>
    </head>
    <body>
        <div style="width: 100%;height: 600px;background-color: #8b1010">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Admin_Menus.jsp"/>
            </div>
            <center>
                <div style="width: 90%;height: 590px;background-color: white;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;">
             
                <br><br> <br>
                    <h3 style="color: black">All Registered Regus Clients</h3>
                       
                                       <table border="1" class="table table-bordered" id="sample_1">
                                          <thead>
                                              <tr>
                                                  <th>No</th>
                                                  <th>Names</th>
                                                  <th>Home Address</th>
                                                  <th>Tel</th>
                                                  <th>Email Address</th>
                                                 <th>Registered Since</th>
                                                 <th>Option</th>
                                                  </tr>
                                          </thead>
                                          <tbody>
                                              <%
                                                   List<Client>ls=Client.getList();
                                               int no=1;
                                                for(int i=0;i<ls.size();i++){
                                                    
                                                
                                                       %>
                                              <tr>
                                                  <td><%=no %></td>
                                                 <td><%=ls.get(i).getNames()%></td>
                                                  
                                                  <td><%=ls.get(i).getAddress()%></td>
                                                   <td><%=ls.get(i).getTel()%></td>
                                                    <td><%=ls.get(i).getEmail()%></td>
                                                       <td><%=ls.get(i).getRegistrationDate()%></td>        
                                                        <td><button class="btn btn-danger">
                                                                <a style="color: white" href="Delete_Client.jsp?xo=<%=ls.get(i).getClientId()%>">Delete</a>
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
