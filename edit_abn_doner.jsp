<%-- 
    Document   : edit_abn_doner
    Created on : Jun 7, 2021, 5:30:38 PM
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
            String d_id=request.getParameter("d_id");
            String d_name=request.getParameter("d_name");
            String mob=request.getParameter("mob");
            String wgt=request.getParameter("wgt");
            try{
                db.pstmt=db.con.prepareStatement("update doner set doner_name='"+d_name+"',mobile='"+mob+"',weight='"+wgt+"' where d_id='"+d_id+"'");
                int i=db.pstmt.executeUpdate();
                if(i>0){
                      response.sendRedirect("AB_Negative.jsp");
                      session.setAttribute("success","Updated Successfully");
                }
                else{
                      response.sendRedirect("AB_Negative.jsp");
                      session.setAttribute("error","Opps!! Something went wrong");
                }
            }
            catch(Exception e){
                e.printStackTrace();
            }
        %>
    </body>
</html>
