<%-- 
    Document   : DonateUs
    Created on : May 31, 2021, 12:41:43 PM
    Author     : Deepankar  Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>DonateUs</title>
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
          <a class="nav-link" href="index.jsp"><i class="fa fa-home">&nbsp;</i>Home <span class="sr-only">(current)</span></a>
      </li>
     
      
      <li class="nav-item">
          <a class="nav-link" href="Register_Doner_Org.jsp"><i class="fas fa-tint">&nbsp;</i>Be a Doner</a>
      </li>
      
      
     </ul>
  </div>
</nav>
        
        <!--For Message Print-->
            <div class="container">
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
        
        <div class='container'>
            <div class='row mt-5'>
                <div class='col-lg-6 col-md-6 col-sm-12'>
                    <img src='images/qrcode.png'>
                </div>
                <div class='col-lg-6 col-md-6 col-sm-12'>
                    <h2>Donate Us with paytm</h2>
                    <h3>UPI Mobile Number:<p>9525874632</p></h3>
                </div>
            </div>
            <div class="row">
                <div class='col-lg-8 col-md-8' col-sm-12>
                   
                    <form method='post' action="donate_us.jsp">
  <div class="row">
    <div class="col">
        <label for="name">Name</label>
      <input type="text" class="form-control" name='name' placeholder="Name" required/>
    </div>
    <div class="col">
        <label for="email">Email</label>
      <input type="email" class="form-control" name='email' placeholder="Email" required/>
    </div>
  </div>
   <div class="row mt-2">
    <div class="col">
        <label for="mob">Mobile No.</label>
      <input type="text" maxlength="10" minlength="10"  class="form-control" name='mob' placeholder="Mobile" required/>
    </div>
    <div class="col">
        <label for="address">Address</label>
      <input type="text" class="form-control" name='addr' placeholder="Address" required/>
    </div>
  </div>
 <div class="row mt-2">
    <div class="col">
        <label for="pincode">Pincode</label>
      <input type="text" maxlength="6" minlength="6" class="form-control" name='pncd' placeholder="Pincode" required/>
    </div>
     <div class="col">
        <label for="amount">Amount</label>
      <input type="text" class="form-control" name='amt' placeholder="Enter Amount" required/>
    </div>
  </div>
  <div class="row mt-2">
    <div class="col">
        <button type="submit" class="btn btn-danger mt-2"><i class="fas fa-sign-out-alt">&nbsp;</i>Submit</button>
    </div>
  </div>
</form>
                    </form>
                </div>
                <div class='col-lg-4 col-md-4' col-sm-12>
  <div class="" style="width: 18rem;">
  <img src="images/donation.jpg" class="card-img-top" alt="donation">
  
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
