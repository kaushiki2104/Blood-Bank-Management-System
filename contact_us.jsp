<%-- 
    Document   : contact_us
    Created on : Jun 1, 2021, 12:06:09 PM
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
    String name=request.getParameter("name");
    String email=request.getParameter("email");     
    String mob=request.getParameter("mob");
    String city=request.getParameter("city");
    String subject=request.getParameter("subject");     
    String msg=request.getParameter("msg");
    
         try{
           dbcon db=new dbcon();
           db.pstmt=db.con.prepareStatement("insert into contactus(name,email,mobile,city,subject,message) "
   + "values ('"+name+"','"+email+"','"+mob+"','"+city+"','"+subject+"','"+msg+"')");
           int i=db.pstmt.executeUpdate();
           if(i>0)
           {
               response.sendRedirect("ContactUs.jsp");
               session.setAttribute("success","Information Recorded successfully");
           }
           else
           {
               response.sendRedirect("ContactUs.jsp");
               session.setAttribute("error","Something went Wrong");
           }
       }
       catch(Exception e){
           e.printStackTrace();
       }
         
         %>
    </body>
</html>
