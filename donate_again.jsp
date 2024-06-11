<%-- 
    Document   : donate_again
    Created on : Jun 18, 2021, 12:46:32 AM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email=(String)session.getAttribute("email");
            String date=request.getParameter("date"); 
            try{
                dbcon db=new dbcon();
      db.pstmt=db.con.prepareStatement("update doner set last_donation='"+date+"' where email='"+email+"'");
        int i=db.pstmt.executeUpdate();
     if(i>0)
     {
     response.sendRedirect("DonerPanel.jsp");
     session.setAttribute("success","Donation Successfully");
     }
     else
     {
     response.sendRedirect("DonerPanel.jsp");
     session.setAttribute("error","Opps! Something Went Wrong");
     }
        }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
