<%@page import="pack.*"%>

<jsp:useBean id="o" scope="request" class="pack.Office"/>
<%
      Office c=Office.getOffice_id(request.getParameter("xo"));
      
      System.out.println("....>"+request.getParameter("xo"));
      
      %>
      
      