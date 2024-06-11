<%-- 
    Document   : donate_us
    Created on : May 31, 2021, 3:01:45 PM
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
    String addr=request.getParameter("addr");
    String pncd=request.getParameter("pncd");     
    String amt=request.getParameter("amt");
    
         try{
           dbcon db=new dbcon();
           db.pstmt=db.con.prepareStatement("insert into donateus(name,email,mobile,address,pincode,amount) "
   + "values ('"+name+"','"+email+"','"+mob+"','"+addr+"','"+pncd+"','"+amt+"')");
           int i=db.pstmt.executeUpdate();
           if(i>0)
           {
               response.sendRedirect("DonateUs.jsp");
               session.setAttribute("success","Information Recorded and Donation successfully");
           }
           else
           {
               response.sendRedirect("DonateUs.jsp");
               session.setAttribute("error","Something went Wrong");
           }
       }
       catch(Exception e){
           e.printStackTrace();
       }
         
         %>
    </body>
</html>
