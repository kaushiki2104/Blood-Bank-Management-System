<%-- 
    Document   : add_organization
    Created on : May 3, 2021, 3:42:54 PM
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
    String oname=request.getParameter("oname");
    String city=request.getParameter("city");  
    String state=request.getParameter("state");  
    String pncd=request.getParameter("pncd");
    String bca=request.getParameter("bca");
    String st=request.getParameter("st");     
    String lcnno=request.getParameter("lcnno");
    String lcndate=request.getParameter("lcndate");
            
               try
               {
                   dbcon db=new dbcon();
                   db.pstmt=db.con.prepareStatement("insert into organization_details(organization_name,city,state,pincode,bld_compo_avail,service_time,license_numb,license_date) "
                           + "values('"+oname+"','"+city+"','"+state+"','"+pncd+"','"+bca+"','"+st+"','"+lcnno+"','"+lcndate+"')");
                   int i=db.pstmt.executeUpdate();
                   if(i>0)
                   {
                       response.sendRedirect("OrganizationPanel.jsp");
                       session.setAttribute("success","Details register Successfully");
                   }
                   else
                   {
                        response.sendRedirect("OrganizationPanel.jsp");
                        session.setAttribute("error","Something went Wrong");
                   }
               }
               catch(Exception e)
               {
                   e.printStackTrace();
               }
         %>
    </body>
</html>
