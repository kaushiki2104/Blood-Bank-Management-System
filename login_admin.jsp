<%-- 
    Document   : login_ua
    Created on : Mar 11, 2021, 10:30:44 AM
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
                   db.pstmt=db.con.prepareStatement("Select * from admin where email='"+email+"'");
                   db.rst=db.pstmt.executeQuery();
                   if(db.rst.next())
                   {
                       if(db.rst.getString(3).equals(pswd))
                       {
                           response.sendRedirect("Dashboard.jsp");
                         //  session.setAttribute("success","Welcome Admin");
                        //   session.setAttribute("email",email);
                           
                       }
                       else
                       {
                           response.sendRedirect("LoginAdmin.jsp");
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
               response.sendRedirect("LoginAdmin.jsp");
               session.setAttribute("error","Your Confirm Password did not match");
           }
           %>
    </body>
</html>
