<%-- 
    Document   : FundDonation
    Created on : Jun 2, 2021, 12:12:07 AM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Bootstrap CSS-->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <title>Fund Donation</title>
    </head>
    <body>
       <!-- Nav Bar -->
       <section>
    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><img src="images/img2.png" style="height: 30px;width: 30px;" class="rounded-circle">&nbsp;<strong style="font-family: cursive;">Blood Beta Ware</strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ml-auto mr-5">
      <li class="nav-item active">
          <a class="nav-link" href="index.jsp"><i class="fa fa-home">&nbsp;</i>Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="#about"><i class="far fa-address-book">&nbsp;</i>About</a>
      </li>
       <li class="nav-item">
          <a class="nav-link" href="ContactUs.jsp"><i class="fas fa-phone-square-alt">&nbsp;</i>Contact Us</a>
      </li>
      
      <li class="nav-item">
          <a class="nav-link" href="DonateUs.jsp"><i class="fas fa-rupee-sign">&nbsp;</i>DonateUs</a>
      </li>

            <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Organization
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#" data-target="#register" data-toggle="modal">Register</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" data-target="#login" data-toggle="modal">LogIn</a>
        </div>
      </li>  
      

      <li class="nav-item">
          <a class="nav-link btn btn-outline-primary" href="Login.jsp"><span class="fa fa-lock"></span>&nbsp;Admin Login</a>
      </li>
     </ul>
  </div>
</nav>
    </section>
                          
                                     
                                     <section class="mt-2">
                               <div class="container-fluid  ">
                                 <div class="row">
                                     <div class="col-lg-12 col-md-12 col-sm-12">
                                         <table class="table table-striped table-hover">
                                             <thead class="bg-danger text-white text-center">
                                                 <tr colspan="6"><h3>Fund Donation List</h3></tr>
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Address</th>
                                                     <th>Amount</th>
                                                     <th>Visit</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     dbcon db=new dbcon();
                                                     db.pstmt=db.con.prepareStatement("select * from donateus");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><a href=".jsp?D_id=<%=d_id%>" class="btn btn-danger"><i class="fas fa-user">&nbsp;</i></a></td>
                                                 </tr>
                                             </tbody>
                                             <%}
                                             %>
                                         </table>
                                     </div>
                                 </div>
                             </div> 
                         </section>
        
        <!--Script -->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>
<script type="text/javascript" src="files/jquery.js"></script>
     </body>
</html>
