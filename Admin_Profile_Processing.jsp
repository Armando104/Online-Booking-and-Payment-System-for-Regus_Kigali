
<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<jsp:useBean id="p" scope="request" class="pack.User">
    
    <jsp:setProperty name="p" property="*" />
    
</jsp:useBean>

<%
    User cl=User.getUser_ID(p.getUser_id()+"");
    p.setUser_status("admin");
    p.setRole("admin");
    cl.setNames(p.getNames());
    cl.setRole("admin");
    cl.setPassword(p.getPassword());
    //cl.setUsername(p.getUsername());
    if(cl.update_all_data()){
    
    p.setMsg("<h2 style=color:green>Your Profile Has Been Updated Re-Login To View Your Change</h2>");
    }else{
      p.setMsg("<h2 style=color:red>Your Profile Has Not Updated</h2>");
    
    
    }
    
    %>
    <jsp:forward page="Admin_Profile.jsp"/>
