 

<%@page import="pack.User"%>
<jsp:useBean id="u" scope="request" class="pack.User" />
<jsp:setProperty name="u" property="*" />
<%
    User s = User.getUser(u.getUsername());
    String ms = "";

    if (s == null) {
        u.setMsg("<h4 style=color:red>Invalid Username</h4>");
        ms = u.getMsg();
          session.setAttribute("x", ms);
        response.sendRedirect("new.jsp#contact");
    } else {
        if (u.getPassword().equals(s.getPassword())) {


            if (s.getRole().equalsIgnoreCase("admin")) {
                session.setAttribute("admin", s);
                response.sendRedirect("dashboard/Admin_DashBoard.jsp");
            }
            if (s.getRole().equalsIgnoreCase("client")) {
                if (s.getUser_status().equalsIgnoreCase("unlocked")) {
                    session.setAttribute("client", s);
                     %>
       <jsp:forward page="Booking_Office.jsp"/>
       <%

                } else {
                    if (s.getUser_status().equalsIgnoreCase("initial")) {
                        ms = "<h4 style=color:red>Please Login Into Your mail box and Activate Your Regus Account</h4>";
                        u.setMsg("<h4 style=color:red>Please Login Into Your mail box and Activate Your Regus Account</h4>");
                        session.setAttribute("x", ms);
                        response.sendRedirect("new.jsp#contact");
                    } else {
                        ms = "<h4 style=color:red>Sorry Your Account Is Locked!Please Contact The System Admin</h4>";
                        u.setMsg("<h4 style=color:red>Sorry Your Account Is Locked!Please Contact The System Admin</h4>");
                        session.setAttribute("x", ms);

                        response.sendRedirect("new.jsp#contact");
                    }
                }

            }

        } else {
            ms = "<h4 style=color:red>Invalid Password</h4>";
            u.setMsg("<h4 style=color:red>Invalid Password</h4>");
            session.setAttribute("x", ms);
            response.sendRedirect("new.jsp#contact");
        }
    }

%>



