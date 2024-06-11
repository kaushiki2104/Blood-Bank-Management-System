<%-- 
    Document   : camp_counter_reg
    Created on : Jun 10, 2021, 4:37:27 PM
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
             
             String cname=request.getParameter("cname");     
             String cdate=request.getParameter("cdate");
             String tot_unit=request.getParameter("tot_unit");
             String tot_per=request.getParameter("tot_per");
             String oname=request.getParameter("oname");     
             
             
             
             try
               {
                    dbcon db=new dbcon();
                    db.pstmt=db.con.prepareStatement("insert into camp(camp_counter_name,camp_date,tot_unit_don,total_person,camp_org_by)"
               + " values('"+cname+"','"+cdate+"','"+tot_unit+"','"+tot_per+"','"+oname+"')");
                    int i=db.pstmt.executeUpdate();
                    if(i>0)
                    {
                        response.sendRedirect("Others.jsp");
                        session.setAttribute("success","Registered Successfully");
                        
                    }
                    else
                    {
                         response.sendRedirect("Others.jsp");
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
