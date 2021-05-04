 

<%@page import="java.util.Date"%>
<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<jsp:useBean id="p" scope="request" class="pack.User"/>

<%@page import="pack.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pack.User"%>
 
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
        <title>JSP Page</title>
    </head>
    <body style="background-color: black">
        <div style="width: 100%;height: 600px;background-color: #8b1010">
            <div style="width: 100%;height: auto;">
                <jsp:include page="Admin_Menus.jsp"/>
            </div>
            <center>
                <div style="background-color: white; width: 90%;height: 580px;border-left: 1px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;">

                    <br><br> <br><br><br> <br>${p.msg}
                    
                    <form action="Admin_Profile_Processing.jsp">
                        <table border="0">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>
                    <h3 style="color: black">Update Your Profile</h3></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Your Names</td>
                                    <td><input type="text" name="names" value="<%=u.getNames() %>" style="height: 35px;width: 400px;" placeholder="<%=u.getNames() %>" /></td>
                                </tr>
                                <tr>
                                    <td>Your System Username</td>
                                    <td><input type="text" name="username" value="<%=u.getUsername() %>" style="height: 35px;width: 400px;" placeholder="<%=u.getUsername()%>" readonly=""/></td>
                                </tr>
                                <tr>
                                    <td>Your Password</td>
                                    <td><input type="password" name="password" value="<%=u.getPassword()%>" style="height: 35px;width: 400px;" placeholder="<%=u.getPassword()%>"/></td>
                                </tr>
                                 
                                <tr>
                                    <td><input type="hidden" name="user_id" value="<%=u.getUser_id()%>" style="height: 35px;width: 400px;" /></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Update" class="btn btn-inverse"/></td>
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

    <script src="Dyanmic-data-table/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="Dyanmic-data-table/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="Dyanmic-data-table/js/DT_bootstrap.js"></script>
    <script src="Dyanmic-data-table/js/dynamic-table.js"></script>
</html>
