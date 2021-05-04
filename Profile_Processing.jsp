
<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<jsp:useBean id="p" scope="request" class="pack.Client">
    
    <jsp:setProperty name="p" property="*" />
    
</jsp:useBean>

<%
    Client cl=Client.getClient_id(p.getClientId()+"");
    if(p.update()){
    User u=User.getUser_ID(cl.getUserId()+"");
    u.setNames(p.getNames());
    u.update_all_data();
    p.setMsg("<h2 style=color:green>Your Profile Has Been Updated Re-Login To View Your Change</h2>");
    }else{
      p.setMsg("<h2 style=color:red>Your Profile Has Not Updated</h2>");
    
    
    }
    
    %>
    <jsp:forward page="Profile.jsp"/>
