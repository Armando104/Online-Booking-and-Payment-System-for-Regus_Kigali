 
<%@page import="pack.*"%>
<%@page import="pack.User"%>
 
<jsp:useBean id="st" scope="request" class="pack.Client">
    
    <jsp:setProperty name="st" property="*"/>
</jsp:useBean>
    <%
        String ms="";
    {
      Client pr=Client.getClient_Email(st.getEmail());
            if(pr==null)
        {
       {
            
            User us=new User();
            us.setNames(st.getNames());
            us.setPassword(request.getParameter("password"));
            us.setUsername(st.getEmail());
            us.setRole("client");
           // us.setUser_status("initial");
            us.setUser_status("unlocked");
            us.insert();
            st.setUserId(us.getUser_id());
            if(st.insert()){
                 
               st.setMsg("<h3 style=color:green><br>Sign Up Successfully Accepted</h3>");
                ms="<h4 style=color:green>Sign Up Successfully Accepted<br>";
                        //+ "<br>A Confirmation Email Has Been Sent To Your Email..Please Activate Now Your Account</h4>";
                 //response.sendRedirect("index.jsp#contact1");
             /*
                Send_Email sm=new Send_Email();
               sm.setMessagee("Hello,"+st.getNames()+" Complete Your Registration By Activating Your Account...Just A Clink On The Below Link<br>http://localhost:8084/Regus_Kigali/Booking_Office.jsp?clid="+us.getUser_id()+"");
               sm.setName(st.getNames());
               sm.setSubject("Regus Account Activation");
               sm.setTo(st.getEmail());
               sm.generateAndSendEmail();
                     */
            }else{
              st.setMsg("<h3 style=color:red><br>Sign Up Fails</h3>");
               ms="<h4 style=color:red>Sign Up Fails</h4>";
                 
            }
            
        } 
        
        }else{
             st.setMsg("<h3 style=color:red>This Email Already Exist</h3>");
            //response.sendRedirect("index.jsp#contact1");
            ms="<h4 style=color:red><br>The Email Already Exist</h4>";
                 
            }
        }
      
      System.out.println("X:"+ms);
      session.setAttribute("x",ms);
 response.sendRedirect("new.jsp#contact1");
      //
      
      
        %>
        
        