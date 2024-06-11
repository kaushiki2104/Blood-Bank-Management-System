<%-- 
    Document   : login_user
    Created on : Apr 29, 2021, 3:27:45 PM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
           String email=request.getParameter("email");
           String pswd=request.getParameter("pswd");
           String cpswd=request.getParameter("cpswd");
           if(pswd.equals(cpswd))
           {
               try{
                   dbcon db=new dbcon();
                   db.pstmt=db.con.prepareStatement("Select * from doner where email='"+email+"'");
                   db.rst=db.pstmt.executeQuery();
                   if(db.rst.next())
                   {
                       if(db.rst.getString(4).equals(pswd))
                       {
                           session.setAttribute("email",email);
                           session.setAttribute("name",db.rst.getString(2));
//                           session.setAttribute("d_id",db.rst.getString(1));
//                           session.setAttribute("last_don",db.rst.getString(8));
                           response.sendRedirect("DonerPanel.jsp");
                           session.setAttribute("success","Welcome Doner");
                       }
                       else
                       {
                           response.sendRedirect("LoginDoner.jsp");
                           session.setAttribute("error","Opps!Your's  Information is incorrect");
                       }
                   }
               }
               catch(Exception e){
                   e.printStackTrace();
               }
                }
           else
           {
               response.sendRedirect("LoginDoner.jsp");
               session.setAttribute("error","Your Confirm Password did not match");
           }
           %>
    </body>
</html>