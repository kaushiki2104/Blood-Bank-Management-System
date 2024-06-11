<%-- 
    Document   : delete_camp
    Created on : Jun 16, 2021, 5:16:03 PM
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
            String camp_id=request.getParameter("camp_id");
            try{
                db.pstmt=db.con.prepareStatement("delete from camp where camp_id='"+camp_id+"'");
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
