 

<%@page import="pack.Client"%>
<%@page import="java.util.List"%>
<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<%
    User u = (User) session.getAttribute("admin");
    if (u == null) {
%>
<jsp:forward page="index.jsp"/>
<%        }

%>
   <jsp:useBean id="o" scope="request" class="pack.Office"/>
    <jsp:useBean id="xx" scope="request" class="pack.OfficeImage"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <jsp:include page="Admin_Menus.jsp"/>
            </div>
            
                <div style="width: 90%;height: 590px;background-color: white;margin-left: 70px;overflow-y: scroll;border-left: 0px dotted #cccccc;border-right: 1px dotted #cccccc;padding: 20px;">
                    <br>
                    <br><br> <br>   <br><br> <br>   <br><br> <br>
                    <%
                        
                        String x=request.getParameter("xo");
                        if(x==null){
                        x=(String)session.getAttribute("im");
                        }
                        session.setAttribute("im",x);
                        
                        %>
                        <center>
                            ${xx.msg}
                        </center>
                        <form enctype="multipart/form-data" class="formoid-solid-dark" style="background-color: black;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:480px;min-width:150px" method="post" action="Image_uploader.jsp"><div class="title" style=""><h2>Add New Office Image</h2></div>
            <input type="file" name="file1" size="50" class="btn btn-navbar" />
            
            <div class="submit"><input type="submit" value="Submit"/></div></form><script type="text/javascript" src="uplodad_files/formoid1/formoid-solid-dark.js"></script>
      
                    
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
