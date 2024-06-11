<%-- 
    Document   : forgot
    Created on : Jul 8, 2021, 8:20:52 PM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Transport"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="mail.SMTPAuthenticator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<%
 String from="email";
// String name=request.getParameter("name");
 String email=request.getParameter("email");
 try{
      dbcon db=new dbcon();
     db.pstmt=db.con.prepareStatement("select password from doner where email='"+email+"'");
       db.rst=db.pstmt.executeQuery();
       if(db.rst.next()){
 String message="Your Password is" + db.rst.getString(1);//request.getParameter("msg");
 }}
   catch(Exception e){
   e.printStackTrace();
   }
// String sub=request.getParameter("sub");
 String login="ds100084@gmail.com";
 String password="8182013770";
 
try{
    Properties props=new Properties();
    props.setProperty("mail.host","smtp.gmail.com");
    props.setProperty("mail.smtp.port","587");
    props.setProperty("mail.smtp.auth","true");
    props.setProperty("mail.smtp.starttls.enable","true");
//    out.print("ok");
    
    Authenticator auth=new SMTPAuthenticator(login,password);
//      out.print("ok1");
    Session session1=Session.getInstance(props,auth);         //session about server not servlet
//      out.print("ok2");
    MimeMessage msg=new MimeMessage(session1);
//      out.print("ok3");
    email.setText(message);
//      out.print("ok4");
//    msg.setSubject(sub,name);
//      out.print("ok5");
    msg.setFrom(new InternetAddress(from));
//      out.print("ok6");
    msg.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
//      out.print("ok7");
    Transport.send(msg);
//      out.print("ok8");
    int i=obj.contact();
    if(i>0)
    {
        response.sendRedirect("Forgot_Password.jsp");
        session.setAttribute("success", "Password send Successfully");
    }
}
catch(Exception e){
    e.printStackTrace();
}
 %>
