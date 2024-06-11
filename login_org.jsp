<%-- 
    Document   : login_org
    Created on : Apr 30, 2021, 2:49:07 PM
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
           String check=request.getParameter("check");
           String email=request.getParameter("email");
           String pswd=request.getParameter("pswd");
           String cpswd=request.getParameter("cpswd");
           if(pswd.equals(cpswd))
           {
               try{
                   dbcon db=new dbcon();
                   db.pstmt=db.con.prepareStatement("Select * from register_hospitals_bborganization where email='"+email+"'");
                   db.rst=db.pstmt.executeQuery();
                   if(db.rst.next())
                   {
                       if(db.rst.getString(4).equals(pswd))
                       {
//                           if(check!=null)
//                           {
//                               Cookie e=new Cookie("email",email);
//                               Cookie p=new Cookie("pswd",pswd);
//                               e.setMaxAge(60*60);        //persistent cookie
//                               p.setMaxAge(60*60);        //persistent cookie
//               
//                               response.addCookie(e);
//                               response.addCookie(p);
//                               response.sendRedirect("cookie");
//                           }
                            session.setAttribute("email",email);
                            session.setAttribute("name",db.rst.getString(2));
                            session.setAttribute("id",db.rst.getString(1));
                            response.sendRedirect("OrganizationPanel.jsp");
                            session.setAttribute("success","Welcome");
                        }
                       else
                       {
                           response.sendRedirect("LoginOrg.jsp");
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
               response.sendRedirect("LoginOrg.jsp");
               session.setAttribute("error","Your Confirm Password did not match");
           }
           %>
    </body>
</html>
