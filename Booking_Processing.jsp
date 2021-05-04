 
 
<%@page import="pack.*"%>
<%@page import="pack.User"%>
 
<jsp:useBean id="b" scope="request" class="pack.OfficeBooking">
    
    <jsp:setProperty name="b" property="*"/>
</jsp:useBean>
    <%
        OfficeBooking bk=OfficeBooking.getBooking_From_All(b.getOfficeId()+"",b.getClientId()+"",b.getRent_starting_datev());
    {
     
        if(bk==null){
       {
            
            
            if(b.insert()){
                 
               b.setMsg("<h3 style=color:green>Office Booking Successfully Accepted</h3>");
               
            }else{
              b.setMsg("<h3 style=color:red>Office Booking Fails</h3>");
   
            }
            
        } 
        
        }else{
        
          b.setMsg("<h3 style=color:red>Office Booking Fails!!! Data Already Submitted</h3>");
        } 
        }
      
      
      
      //response.sendRedirect("index.jsp#contact1?msg="+st.getMsg());
      
      
        %>
      
        <jsp:forward page="Client_Booking_Offices.jsp"/>