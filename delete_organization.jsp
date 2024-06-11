<%-- 
    Document   : delete_organization
    Created on : Jun 2, 2021, 11:41:02 AM
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
            String org_hosp_id=request.getParameter("org_hosp_id");
            try{
                db.pstmt=db.con.prepareStatement("delete from register_hospitals_bborganization where org_hosp_id='"+org_hosp_id+"'");
                int i=db.pstmt.executeUpdate();
                if(i>0){
                      response.sendRedirect("M_Organization.jsp");
                      session.setAttribute("success","Deleted Successfully");
                }
                else{
                      response.sendRedirect("M_Organization.jsp");
                      session.setAttribute("error","Opps!! Something went wrong");
                }
            }
            catch(Exception e){
                e.printStackTrace();
            }
        %>
    </body>
</html>
