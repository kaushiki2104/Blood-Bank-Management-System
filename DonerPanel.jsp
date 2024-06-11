<%-- 
    Document   : UserPanel
    Created on : Apr 29, 2021, 3:29:47 PM
    Author     : Deepankar  Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB.dbcon"%>
<%--<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>--%>

<%
//    Date d=new Date();
//    SimpleDateFormat sf=new SimpleDateFormat("dd-MM-yyyy");
//    String date=sf.format(d);
    dbcon db=new dbcon();
//    String last_don=(String)session.getAttribute("last_don");
    String email=(String)session.getAttribute("email");
//    String name=(String)session.getAttribute("name");
//    String id=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> 
         
        <title>User Panel</title>
    </head>
    <body style="background-color: #ffb3b3;">
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
              
                                     
                                        <!-- User/Doner panel-->
                             <section class="mt-2">
                    <div class="container">
                       <div class="row">
                           <div class="col-lg-4 col-md-4 col-sm-12">
                          <div class="card mx-auto">
				  <img class="card-img-top mx-auto" style="width:60%; border-radius: 100px;" src="images/blddoner.jpg" alt="Doner">
				  <div class="card-body">
				    <h4 class="card-title">Profile Info</h4>
                                           <%
//                                               session.setAttribute("email",email);
                                        try{
                                        db.pstmt=db.con.prepareStatement("select * from doner where email='"+email+"'");
                                        db.rst=db.pstmt.executeQuery();
                                        if(db.rst.next())
                                        {
                                         %>
                                    
                                         <p class="card-text"><i class="fa fa-user">&nbsp;</i><%=db.rst.getString(2)%></p>
				         <p class="card-text"><i class="fas fa-tint">&nbsp;</i><%=db.rst.getString(6)%></p>
				    
                                    <a href="EditProfileDoner.jsp"  class="btn btn-primary edit"><i class="fas fa-user-edit">&nbsp;</i>Edit Profile</a>
                                    <a href="#" data-toggle="modal" data-target="#change_pswd" class="btn btn-info"><i class="fas fa-key">&nbsp;</i>Change Password</a>
				    <% }}
                                     catch(Exception e){
                                         e.printStackTrace();
                                     }
                                    %>
                                     
                                  </div>
				</div>
                        </div> 
                    <div class="col-lg-8 col-md-8 col-sm-12">
                       <div class="jumbotron" style="width:100%;height:100%;">
					<h1>Welcome Doner</h1>
                                        <p>Have a nice day!!</p>
                                        <div class="row">
                                            <div class="col-sm-6">
                                      <iframe src="https://free.timeanddate.com/clock/i7tu00hf/n539/tt0/tw0/tm1/ts1/tb4" frameborder="0" width="87" height="34"></iframe>
  
                                            </div>
                                            <div class="col-sm-6">
                                               <div class="card">
		                      <div class="card-body bg-danger text-white">
		              	        <h4 class="card-title">My Donation Report</h4>
				        <p class="card-text">Here you can see your report and check status</p>
                                        <a href="#" data-target="#report" data-toggle="modal" class="btn btn-primary"><i class="fas fa-clipboard-check">&nbsp;</i>Report</a>						      </div>
				         </div>
                                            </div>
                                        </div>    
                     </div> 
                     </div>
                   </div>
                    </div>
                                 <div class="container mt-2">
                                     <div class="row">
                                         <div class="col-lg-4 col-md-4 col-sm-12">
                                            <div class="card">
						<div class="card-body">
						<h4 class="card-title">Find Blood </h4>
						<p class="card-text">Here you can find hospital or organization which provide you blood units</p>
                                                <a href="FindBlood.jsp"  class="btn btn-danger"><i class="fas fa-search-location">&nbsp;</i>Click Here</a>
						
					</div>
				</div> 
                                         </div>
                                         <div class="col-lg-4 col-md-4 col-sm-12">
                                             <div class="card">
						<div class="card-body">
						<h4 class="card-title">Donate Us</h4>
						<p class="card-text">Here you can donate us as wish you want and support us</p>
						<a href="DonateUs.jsp"  class="btn btn-danger"><i class="fas fa-rupee-sign">&nbsp;</i>Donate</a>
						
					</div>
				</div>
                                         </div>
                                         <div class="col-lg-4 col-md-4 col-sm-12">
                                            <div class="card">
						<div class="card-body">
						<h4 class="card-title">View profile</h4>
						<p class="card-text">Here you can manage your profile and see your profile</p>
						<a href="DonerProfile.jsp"  class="btn btn-danger"><i class="fa fa-user">&nbsp;</i>View</a>
						
					</div>
				</div> 
                                </div>
                      </div>                
                  </div>
            </section>
                                        
                                         <!--Modal for Change Password-->
  <div class="modal fade" id="change_pswd" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-danger text-white card-header">
        <h5 class="modal-title text-center" id="exampleModelModel">Update Password</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body bg-dark text-white">
          <form id="changepswd" action="update_pswd_doner.jsp">
          <div class="form-group">
            <label><i class="fas fa-key">&nbsp;</i>Old Password</label>
            <input type="password" class="form-control" name="op" id="op" placeholder="Enter Old Password">
            <small id="pswd_error" class="form-text text-muted"></small>
          </div>
              <div class="form-group">
            <label><i class="fas fa-key">&nbsp;</i>New Password</label>
            <input type="password" class="form-control" name="np" id="np" placeholder="Enter New Password">
            <small id="pswd_error" class="form-text text-muted"></small>
          </div>
              <div class="form-group">
            <label><i class="fas fa-key">&nbsp;</i>Confirm Password</label>
            <input type="password" class="form-control" name="cp" id="cp" placeholder="Enter Confirm Password">
            <small id="pswd_error" class="form-text text-muted"></small>
          </div>
          <button type="submit" class="btn btn-primary"><i class="fas fa-user-check">&nbsp;</i>Update</button>
        </form>
      </div>
    </div>
  </div>
</div>
                                         
                                          
                                <!--Donation Report-->
                        <div class="modal" tabindex="-1" id="report">
                                   <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                 <div class="modal-header bg-danger text-white">
                                  <h5 class="modal-title">Donation Report</h5>
                                 <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                                   <span aria-hidden="true">&times;</span>
                                  </button>
                                    </div>
                               <div class="modal-body">
                                   <%
                                        try{
                                        db.pstmt=db.con.prepareStatement("select * from doner where email='"+email+"'");
                                        db.rst=db.pstmt.executeQuery();
                                        if(db.rst.next())
                                        {
                                         %>
                                   <table class="table table-sm table-hover table-bordered">
                                       <tr><th>Doner Name</th><td><%=db.rst.getString(2)%></td></tr>
                                       <tr><th>Blood Group</th><td><%=db.rst.getString(6)%></td></tr>
                                       <tr><th>Gender</th><td><%=db.rst.getString(7)%></td></tr>
                                       <tr><th>Last Donation</th><td><%=db.rst.getString(8)%></td></tr>
                                       <tr><th>Age</th><td><%=db.rst.getString(9)%></td></tr>
                                       <tr><th>Weight</th><td><%=db.rst.getString(10)%></td></tr>
                                       <tr><th>City</th><td><%=db.rst.getString(11)%></td></tr>
                                       <tr><th>State</th><td><%=db.rst.getString(12)%></td></tr>
                                   </table>
                                       <% }}
                                     catch(Exception e){
                                         e.printStackTrace();
                                     }
                                    %>
                                 </div>
                              <div class="modal-footer">
                             <button type="button" data-target="#don_again" data-toggle="modal" class="btn btn-success">Donate Again</button>
                            </div>
                           </div>
                          </div>
                     </div>
                                 
                                 <!--Donation Again-->
  <div class="modal fade" id="don_again" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-danger text-white card-header">
        <h5 class="modal-title text-center" id="exampleModelModel">Donate Again</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body ">
          <form id="changepswd" action="donate_again.jsp">
          
              <div class="form-group">
            <label>Donation Date</label>
            <input type="date" class="form-control" name="date" id="" placeholder="Date">
            <small id="pswd_error" class="form-text text-muted"></small>
          </div>
              
          <button type="submit" class="btn btn-primary">Donate</button>
        </form>
      </div>
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
