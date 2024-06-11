/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mail;

import DB.dbcon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Sendmail extends HttpServlet {
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String from = "to";
        String to = request.getParameter("to");
        String subject = request.getParameter("sub");//" Regarding Forget Password"

//        dbcon db=new dbcon();
//db.pstmt=db.con.prepareStatement("select password from login where email='"+email+"'");
//db.rst=db.pstmt.executeQuery();
//db.rst.next();

        String message = request.getParameter("msg");// "Your Password is"+ db.rst.getString(1);
        String login = "ds100084@gmail.com";
        String password ="8182013770";
              try {
            Properties props = new Properties();
            props.setProperty("mail.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");
            props.setProperty("mail.smtp.starttls.enable", "true");

            Authenticator auth = new SMTPAuthenticator(login, password);

            Session session = Session.getInstance(props, auth);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(message); 
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(from));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            Transport.send(msg);
            response.sendRedirect("index.html?msg=Mail Sent Seuccessfully !");
        } catch (AuthenticationFailedException ex) {
            System.out.println(ex.getMessage());
            response.sendRedirect("index.html?err=Authentication failed !");

        } catch (AddressException ex) {
            System.out.println(ex);
           response.sendRedirect("index.jsp?err=Wrong Email Address !");

        } catch (MessagingException ex) {
            System.out.println(ex.getMessage());
            response.sendRedirect("index.jsp?err='" + ex.getMessage() + "'");
        } catch (Exception e) {
            System.out.println(e);
        } 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
