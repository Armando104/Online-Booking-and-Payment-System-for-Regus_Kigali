 
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

 
if(o.getOp().equalsIgnoreCase("submit")){

         Office c=Office.getOffice_address(o.getOfficeAddress());
         if(c==null){
            {

 o.setRecordedBy(u.getUser_id());
                    if (o.insert()) {

                        o.setMsg("<h5 style=color:green>Office Successfully Added</h5>");
                    } else {
                        o.setMsg("<h5 style=color:red>Registration Fails</h5>");

                    }

                }
 
         
    }else{
             o.setMsg("<h5 style=color:red>Office Already Recorded</h5>");
         }
}
 
if(o.getOp().equalsIgnoreCase("delete")){
   Office c=Office.getOffice_id(o.getOfficeId()+"");
         if(c!=null){
            {
 
                    if (o.delete()) {

                        o.setMsg("<h5 style=color:green>Office Successfully Updated</h5>");
                    } else {
                        o.setMsg("<h5 style=color:red>Update Fails</h5>");

                    }

                }
 
         
    }else{
             o.setMsg("<h5 style=color:red>Office Already Recorded</h5>");
         }
}
 
if(o.getOp().equalsIgnoreCase("update")){
   Office c=Office.getOffice_id(o.getOfficeId()+"");
         if(c!=null){
            {
 
                    if (o.update()) {

                        o.setMsg("<h5 style=color:green>Office Successfully Updated</h5>");
                    } else {
                        o.setMsg("<h5 style=color:red>Update Fails</h5>");

                    }

                }
 
         
    }else{
             o.setMsg("<h5 style=color:red>Office Already Recorded</h5>");
         }
}
%>

<jsp:forward page="All_Offices.jsp"/>