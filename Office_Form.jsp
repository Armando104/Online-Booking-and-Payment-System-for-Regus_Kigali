 

<%@page import="pack.Client"%>
<%@page import="java.util.List"%>
<%@page import="pack.*"%>
<%@page import="java.util.List"%>

<%@page import="pack.User"%>
 
<!DOCTYPE html>
<%
    User u = (User) session.getAttribute("admin");
    if (u == null) {
%>
<jsp:forward page="index.jsp"/>
<%        }

%>
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
                    <br><br> <br>
 
                    <form class="formoid-solid-red" action="Office_Processing.jsp" style="background-color:#ebebeb;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:480px;min-width:150px" method="post">
                        <input type="hidden" name="officeId" value="${o.officeId}" />
                        <div class="title" style="background-color: black"><h2>New Office Recording Form</h2></div>
                        <div class="element-number" title="Office Address"><label class="title"><span class="required">*</span></label><div class="large"><input class="large" type="text"  name="officeAddress" required="required" placeholder="Office Address" value="${o.officeAddress}"/><span class="icon-place"></span></div></div>
                        
                        <div class="element-select"><label class="title"><span class="required">*</span></label><div class="item-cont"><div class="large"><span><select  required="required" name="officeType">

                                            <option value="Meeting Office">Meeting Office</option>
                                            <option value="Home Office">Home Office</option>
                                             <option value="Conferance Hall">Conference Office</option>
                                            <option value="Team Work Office">Team Work Office</option></select><i></i><span class="icon-place"></span></span></div></div></div>
                        <div class="element-number" title="Precise The Maximum Number of Employe"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="number" min="2" max="50" name="capacity" required="required" placeholder="Maximum Person(s) e.g 5" value="${o.capacity}"/><span class="icon-place"></span></div></div>
                        <div class="element-input"><label class="title"></label><div class="item-cont"><input class="large" type="text" name="officeSize" placeholder="Office Size e.g 3m-4m" value="${o.officeSize}"/><span class="icon-place"></span></div></div>
                        <div class="element-input"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" name="cost" required="required" placeholder="Monthly Office Cost In USD" value="${o.cost}"/><span class="icon-place"></span></div></div>
                        <div class="element-textarea" title="e.g: Toilet,...."><label class="title"><span class="required">*</span></label><div class="item-cont"><textarea class="medium" name="otherDetails" cols="20" rows="5" required="required" placeholder="Other Details Information Regarding The Office">${o.otherDetails}</textarea><span class="icon-place"></span></div></div>
                        <div class="submit"><input type="submit" name="op" value="${o.op}"/></div></form>
                            <%
                            %>
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
