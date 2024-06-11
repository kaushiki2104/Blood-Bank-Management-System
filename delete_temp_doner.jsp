<%-- 
    Document   : delete_temp_doner
    Created on : Jun 10, 2021, 1:28:10 PM
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
            dbcon db=new dbcon();
            String temp_d_id=request.getParameter("temp_d_id");
            try{
                db.pstmt=db.con.prepareStatement("delete from doner where temp_d_id='"+temp_d_id+"'");
                int i=db.pstmt.executeUpdate();
                if(i>0){
                      response.sendRedirect("Others.jsp");
                      session.setAttribute("success","Deleted Successfully");
                }
                else{
                      response.sendRedirect("Others.jsp");
                      session.setAttribute("error","Opps!! Something went wrong");
                }
            }
            catch(Exception e){
                e.printStackTrace();
            }
        %>
    </body>
</html>
