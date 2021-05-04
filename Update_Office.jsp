


<%@page import="pack.*"%>
<%@page import="pack.User"%>

<%@page import="pack.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    User u = (User) session.getAttribute("admin");
    if (u == null) {
%>
<jsp:forward page="index.jsp"/>
<%        }

%>
<jsp:useBean id="o" scope="request" class="pack.Office">

    <jsp:setProperty name="o" property="*"/>
</jsp:useBean>
<%

 


         Office c=Office.getOffice_id(request.getParameter("xo"));
         o.setCapacity(c.getCapacity());
         o.setCost(c.getCost());
         o.setOfficeAddress(c.getOfficeAddress());
         o.setOfficeSize(c.getOfficeSize());
         o.setOfficeType(c.getOfficeType());
         o.setOfficeId(c.getOfficeId());
         o.setOtherDetails(c.getOtherDetails());
         o.setOp("Update");
%>
<jsp:forward page="Office_Form.jsp"/>
 