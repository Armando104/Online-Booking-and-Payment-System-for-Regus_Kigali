

<%@page import="pack.OfficeImage"%>
<%@page import="pack.Office"%>
 <jsp:useBean id="xx" scope="request" class="pack.OfficeImage"/>
<%

    String x = request.getParameter("xo");

    OfficeImage of = OfficeImage.getOfficeImage_ID(x);

    if(of.delete()){
    xx.setMsg("<h3 style=color:red>Office Image Successfully Removed</h3>");
    }else{
     xx.setMsg("<h3 style=color:red>Office Image Not Removed</h3>");
    }
    response.sendRedirect("View_Office_Images.jsp?xo="+x+"");
%>