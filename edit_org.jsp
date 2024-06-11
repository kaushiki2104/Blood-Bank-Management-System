<%-- 
    Document   : edit_org
    Created on : Jun 7, 2021, 5:52:35 PM
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
            String oname=request.getParameter("oname");
            String mob=request.getParameter("mob");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String pncd=request.getParameter("pncd");
            String bca=request.getParameter("bca");
            String st=request.getParameter("st");
            String lcn_no=request.getParameter("lcn_no");
            String lcn_date=request.getParameter("lcn_date");
            
            
            try{
                db.pstmt=db.con.prepareStatement("update register_hospitals_bborganization set org_hosp_name='"+oname+"',mobile='"+mob+"',city='"+city+"',pincode='"+pncd+"',state='"+state+"',bld_compo_avail='"+bca+"',service_time='"+st+"',license_numb='"+lcn_no+"',license_date='"+lcn_date+"' where org_hosp_id='"+org_hosp_id+"'");
                int i=db.pstmt.executeUpdate();
                if(i>0){
                      response.sendRedirect("M_Organization.jsp");
                      session.setAttribute("success","Updated Successfully");
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
