<%-- 
    Document   : Dashboard
    Created on : Mar 11, 2021, 1:50:58 PM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    dbcon db=new dbcon();
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
         
        <title>Dashboard Page</title>
    </head>
    <body>
                                                           <!-- Nav Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><img src="images/img2.png" style="height: 30px;width: 30px;" class="rounded-circle">&nbsp;<strong style="font-family: cursive;">Blood Beta Ware</strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ml-auto mr-5">
      <li class="nav-item active">
          <a class="nav-link" href="Dashboard.jsp"><i class="fa fa-home">&nbsp;</i>Home <span class="sr-only">(current)</span></a>
      </li>
     
      
      <li class="nav-item">
          <a class="nav-link" href="doner.jsp"><i class="fas fa-th-list">&nbsp;</i>Doner's</a>
      </li>
      
      <li class="nav-item">
          <a class="nav-link" href="logout.jsp"><i class="fa fa-lock">&nbsp;</i>Logout</a>
      </li>
     </ul>
  </div>
</nav>
        
                    <!--For Message Print-->
            <div class="container-fluid">
                                 <div class="row">
                                     <div class="col-lg-1 col-md-1 col-sm-12"></div>
                                     <div class="col-lg-10 col-md-10 col-sm-12">
                             <% String success=(String)session.getAttribute("success");
                    if(success!=null)
                    { %>
                      
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong><%=success%></strong>
                         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                   <% }
                  session.removeAttribute("success");
                    %>
                    <% String error=(String)session.getAttribute("error");
                    if(error!=null)
                    { %>
                      
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <strong><%=error%></strong>
                         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                   <% }
                   session.removeAttribute("error");
                    %>
                                     </div>
                                     <div class="col-lg-1 col-md-1 col-sm-12"></div>
                                 </div>
            </div>
                          
                                     <div class="container-fluid">
                                         <div class="row mt bg-danger text-white">
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                 <h2 style='color: #66BFBF;font-family: curasive;'>Welcome Admin</h2>
                                             </div>
                                             <div class="col-lg-7 col-md-7 col-sm-12">
                                                 <marquee>Admin</marquee>
                                             </div>
                                             <div class="col-lg-1 col-md-1 col-sm-12">
                                                 <%
                                                     try{
                                                    
                                                    db.pstmt=db.con.prepareStatement("select count(c_id) from contactus where status='0'");
                                                   db.rst=db.pstmt.executeQuery();
                                                   if(db.rst.next()){
                                                 int msg=db.rst.getInt(1);
                                                      %>
                                                 <a href="Notification.jsp" class="btn btn-success btn-md"><span class="fas fa-bell">&nbsp;</span>
                                                     <span class='badge badge-primary'><%=msg%></span></a>   
                                                   <%}}
                                                     catch(Exception e){
                                                     e.printStackTrace();
                                                    }%>
                                             </div>
                                             <div class="col-lg-1 col-md-1 col-sm-12">
                                                 <a href="logout.jsp" class="btn btn-warning btn-md"><span class="fa fa-power-off">&nbsp;</span></a>
                                             </div>
                                         </div>
                                     </div>    
                                     
                                     <div class="row mt-2">
                                         <div class="col-lg-3 col-md-3 col-sm-12">
                                             <ul class="nav nav-pills flex-column">
                                                 <li class="nav-item">
                                                <a class="nav-link active" href="#">Home</a>
                                                  </li>
                                                 <li class="nav-item">
                                               <a class="nav-link" href="M_Organization.jsp">Organization/Hospitals</a>
                                                    </li>
                                             <li class="nav-item">
                                           <a class="nav-link" href="M_Doners.jsp">Permanent Doner's</a>
                                             </li>
                                             <li class="nav-item">
                                           <a class="nav-link" href="M_Temp_Doner.jsp">Temporary Doner's</a>
                                             </li>
                                      <li class="nav-item">
                                    <a class="nav-link" href="M_Stock.jsp">Stock</a>
                                         </li>
                                         </ul>
                                         </div>
                                         <div class="col-lg-3 col-md-3 col-sm-12">
                                              <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(org_hosp_name) from register_hospitals_bborganization");
                                          
                                           db.rst=db.pstmt.executeQuery(); 
                                          if(db.rst.next()){
                                          int org_no=db.rst.getInt(1);
                                           %>
                                          <div class="card" style="width: 18rem;">
                                        <img src="images/bld.jpg" style="height: 290px; width: 286px;" class="card-img-top" alt="...">
                                        <div class="card-body">
                                       <h5 class="card-title">Organizations/Hospitals</h5>
                              
                                       <a href="M_Organization.jsp" class="btn btn-primary"><%=org_no%></a>
                                        </div>
                                          </div>
                                          <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                         </div>
                                         
                                         <div class="col-lg-3 col-md-3 col-sm-12">
                                              <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(doner_name) from doner");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int do_no=db.rst.getInt(1);
                                           %>
                                          <div class="card" style="width: 18rem;">
                                        <img src="images/fb1.jpg" style="height: 290px; width: 286px;" class="card-img-top" alt="...">
                                        <div class="card-body">
                                       <h5 class="card-title">Total Doners</h5>
                              
                                       <a href="M_Doners.jsp" class="btn btn-primary"><%=do_no%></a>
                                        </div>
                                          </div>
                                          <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                         </div>
                                         <div class="col-lg-3 col-md-3 col-sm-12">
                                             <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(blood_donate) from temp_doner");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int tst=db.rst.getInt(1);
                                           %>
                                               <div class="card" style="width: 18rem;">
                                            <img src="images/asd.jpg" style="height: 290px; width: 286px;" class="card-img-top" alt="...">
                                           <div class="card-body">
                                           <h5 class="card-title">Total Stock</h5>
                                           <a href="M_Stock.jsp" class="btn btn-primary"><%=tst%> Unit</a>
                                               <p>Blood Available</p>
                                           
                                         </div>
                                            <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                        </div>
                                       </div>
                                     </div>
                                     
                                     
 <!--Script -->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>
<script type="text/javascript" src="files/jquery.js"></script>
                                    
    </body>
</html>
