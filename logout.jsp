<%-- 
    Document   : logout
    Created on : Mar 11, 2021, 2:06:34 PM
    Author     : Deepankar  Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <%
            try{
            session.invalidate();
     response.sendRedirect("index.jsp");
     session.setAttribute("success","Logout Successfully");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            %>
    </body>
</html>
