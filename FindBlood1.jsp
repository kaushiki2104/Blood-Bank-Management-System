<%-- 
    Document   : FindBlood1
    Created on : Jun 16, 2021, 10:46:29 PM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    dbcon db=new dbcon();
    String city=request.getParameter("city");
    String state=request.getParameter("state");
    String bldgrp=request.getParameter("bldgrp");
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="files/style_3.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         


        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
       <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
        <title>Find Blood</title>
    </head>
    <body>
        

<div class="container">
     <!-- Nav Bar -->
    <nav class="navbar navbar-expand-lg navbar fixed-top navbar-dark bg-dark">
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
          <a class="nav-link" href="ContactUs.jsp"><i class="fas fa-phone-square-alt">&nbsp;</i>Contact Us</a>
      </li>
      
      <li class="nav-item">
          <a class="nav-link" href="DonateUs.jsp"><i class="fas fa-rupee-sign">&nbsp;</i>DonateUs</a>
      </li>

      <li class="nav-item">
          <a class="nav-link" href="Register_Doner_Org.jsp"><i class="fas fa-tint">&nbsp;</i>Be a Doner</a>
      </li>
      
     </ul>
  </div>
</nav>
</div>
        

   <div class="container-fluid">
  <div class="row">
     <div class="col-lg-1 col-md-1 col-sm-12 img"></div>
    <div class="col-lg-11 col-md-11 col-sm-12 ">
        <div class="container-fluid mt-">
                                 <div class="row">
                                     <div class="col-lg-12 col-md-12 col-sm-12">
                                         <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 <tr colspan="12"><h2>Doner's List</h2></tr>
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>Blood Group</th>
                                                     <th>Age</th>
                                                     <th>Weight</th>
                                                     <th>Gender</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Pincode</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                    
                                                     db.pstmt=db.con.prepareStatement("select * from doner where (city='"+city+"' and state='"+state+"' and bloodgroup='"+bldgrp+"')");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><%=db.rst.getString(10)%></td>
                                                     <td><%=db.rst.getString(11)%></td>
                                                     <td><%=db.rst.getString(12)%></td>
                                                     <td><%=db.rst.getString(13)%></td>
                                                     
                                                     <td><a href="View_Doner.jsp?d_id=<%=d_id%>" class="btn btn-success"><i class="fas fa-eye">&nbsp;</i></a></td>
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                                     </div>
                                 </div>
                             </div> 
    </div></div></div>
        <!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
 </div>
 <p>Powered by <a href="" target="">Blood Beta Ware</a></p>
  <div class="copyright-text">Copyright &copy; 2021. All Rights Reserved <a href="#"></a></div>
                    <div class="copyright-text">Design & Develop by  <a target="" href="">deepankar</a></div>
</footer>


        <!--Script -->
 <script src="https://www.google.com/recaptcha/api.js" async defer></script>
 <script type="text/javascript" src="files/script.js"></script>
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>
<script type="text/javascript" src="files/jquery.js"></script>
    </body>
</html>

