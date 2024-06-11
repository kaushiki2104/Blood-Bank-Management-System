<%-- 
    Document   : change_pswd_org
    Created on : Jun 9, 2021, 5:51:54 PM
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
            try{
                dbcon db=new dbcon();
                String email=(String)session.getAttribute("email");
                String op=request.getParameter("op");
                String np=request.getParameter("np");
                String cp=request.getParameter("cp");
                
                db.pstmt=db.con.prepareStatement("select password from register_hospitals_bborganization where email='"+email+"'");
                db.rst=db.pstmt.executeQuery();
                if(db.rst.next())
                {
                    if(db.rst.getString(1).equals(op))
                    {
                        if(np.equals(cp))
                        {
                            db.pstmt=db.con.prepareStatement("update register_hospitals_bborganization set password='"+np+"' where email='"+email+"'");
                            int i=db.pstmt.executeUpdate();
                            if(i>0)
                            {
                                response.sendRedirect("OrganizationPanel.jsp");
                                session.setAttribute("success","Password Update Successfully");
                            }
                            else
                            {
                                response.sendRedirect("OrganizationPanel.jsp");
                                session.setAttribute("error","Opps! Something went wrong");
                            }
                        }
                        else
                        {
                            response.sendRedirect("OrganizationPanel.jsp");
                            session.setAttribute("error","New password does not match");
                        }
                    }
                    else
                    {
                        response.sendRedirect("OrganizationPanel.jsp");
                        session.setAttribute("error", "Old password does not match");
                    }
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
