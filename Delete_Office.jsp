<%@page import="pack.*"%>

<jsp:useBean id="o" scope="request" class="pack.Office"/>
<%
      Office c=Office.getOffice_id(request.getParameter("xo"));
         if(c!=null){
            {
 
                    if (c.delete()) {

                        o.setMsg("<h5 style=color:green>Office Successfully Deleted</h5>");
                    } else {
                        o.setMsg("<h5 style=color:red>Delete Fails</h5>");

                    }

                }
 
         
    } 

  
    %>
    <jsp:forward page="All_Offices.jsp"/>