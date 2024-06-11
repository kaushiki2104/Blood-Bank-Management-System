<%-- 
    Document   : DonerProfile
    Created on : Jun 4, 2021, 12:35:02 PM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    dbcon db=new dbcon();
    String email=(String)session.getAttribute("email");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="files/doner_prof.css" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!------ Include the above in your HEAD tag ---------->
        <title>Doner Profile</title>
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
          <a class="nav-link" href="DonerPanel.jsp"><i class="fa fa-home">&nbsp;</i>Home <span class="sr-only">(current)</span></a>
      </li>
     
      
      
      <li class="nav-item">
          <a class="nav-link" href="logout.jsp"><i class="fa fa-lock">&nbsp;</i>Logout</a>
      </li>
     </ul>
  </div>
</nav>
        

<div class="container emp-profile">
                                       <%
                                        try{
                                        db.pstmt=db.con.prepareStatement("select * from doner where email='"+email+"'");
                                        db.rst=db.pstmt.executeQuery();
                                        if(db.rst.next())
                                        {
                                         %>
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="images/img2.png" style="height: 120px; width: 120px;" alt=""/>
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <%=db.rst.getString(2)%>
                                    </h5>
                                    <h6>
                                        Blood Doner
                                    </h6>
                                    <p class="proile-rating">Blood Group : <span><%=db.rst.getString(6)%></span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                               
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <a href="EditProfileDoner.jsp"profile-edit-btn" >Edit Profile</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Doner Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(1)%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(2)%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(3)%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(5)%></p>
                                            </div>
                                        </div>
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Gender</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(7)%></p>
                                            </div>
                                           </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Last Donation</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(8)%></p>
                                            </div>
                                        </div>
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Age</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(9)%></p>
                                            </div>
                                        </div>
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Weight</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(10)%></p>
                                            </div>
                                        </div>
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>City</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(11)%></p>
                                            </div>
                                        </div>
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>State</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(12)%></p>
                                            </div>
                                        </div>
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Pincode</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=db.rst.getString(13)%></p>
                                            </div>
                                        </div>
                                            
                            </div>
                            
                        </div>
                    </div>
                </div>
            </form>        
                                       <% }}
                                     catch(Exception e){
                                         e.printStackTrace();
                                     }
                                    %>
        </div>
          
          
          <!--Script -->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>
<script type="text/javascript" src="files/jquery.js"></script>
    </body>
</html>
