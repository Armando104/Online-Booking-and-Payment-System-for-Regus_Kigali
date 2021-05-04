<%-- 
    Document   : Temp
    Created on : Apr 4, 2016, 2:13:16 PM
    Author     : PREFERRED MICROF
--%>

<%@page import="pack.Client"%>
<%@page import="java.util.List"%>
<%@page import="pack.*"%>
<%@page import="java.util.List"%>
   <jsp:useBean id="o" scope="request" class="pack.Office"/>
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
                        session.setAttribute("im",x);
                        
                        %>
                    <form enctype="multipart/form-data" class="formoid-solid-dark" style="background-color:#FFFFFF;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:480px;min-width:150px" method="post" action="Image_uploader.jsp"><div class="title"><h2>Add New Office Image</h2></div>
            <div class="element-file"><label class="title"></label><div class="item-cont"><label class="large" ><div class="button">Choose Office Image</div><input type="file" class="file_input" name="file1" /><div class="file_text">No Image selected</div><span class="icon-place"></span></label></div></div>
            <div class="submit"><input type="submit" value="Submit"/></div></form><p class="frmd"><a href="http://formoid.com/v29.php">css form</a> Formoid.com 2.9</p><script type="text/javascript" src="uplodad_files/formoid1/formoid-solid-dark.js"></script>
      
                    
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
