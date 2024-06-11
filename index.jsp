<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<title>Blood Beta Ware</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--Bootstrap CSS-->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<body>

                                   <!-- Nav Bar -->
    <nav class="navbar navbar-expand-lg navbar  navbar-dark bg-dark">
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
          <a class="dropdown-item" href="Register_Doner_Org.jsp" >Register</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="Register_Doner_Org.jsp"  >LogIn</a>
        </div>
      </li>  
      

      <li class="nav-item">
          <a class="nav-link btn btn-outline-primary" href="LoginAdmin.jsp"><span class="fa fa-lock"></span>&nbsp;Admin Login</a>
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
                                     
                                     
                    
<!-- Header -->
<header class="w3-container w3-center" style="padding:200px 16px; background-image: url(images/home.jpg);">
  <h1 class="w3-margin w3-jumbo w3-text-white">Do it for life</h1>
  <p class="w3-xlarge w3-text-white">We Are Humans to show Humanity</p>
  <a href="Register_Doner_Org.jsp" class="w3-button btn btn-outline-light theme-btn  w3-grey w3-padding-large w3-large w3-margin-top" style="border-radius: 50px;"><i class="fas fa-tint"></i>Be a Doner</a>
  <a href="LoginDoner.jsp" class="w3-button btn btn-outline-light  w3-padding-large w3-large w3-margin-top " style="border-radius: 50px;"><span class="fa fa-lock"></span>&nbsp;Login Doner</a>
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
      <h1>Why should  donate blood?</h1>
      <h5 class="w3-padding-32">Our nation requires 4 Crore Units of Blood while only 40 lakh units are available,
                                    Every two seconds someone needs Blood
                                    There is no substitute for Human Blood. It cannot be manufactured</h5>

      <p class="w3-text-grey">  Blood donation is an extremely noble deed, yet there is a scarcity of regular donors across India.
                                    We focus on creating & expanding a virtual army of blood donating volunteers who could be searched and contacted by family / care givers of a patient in times of need.</p>
    </div>

    <div class="w3-third w3-center">
      <img src="images/logimg.jpg" style="height: 250px; width: 250px; "alt= blood bank today">
    </div>
  </div>
</div>

<!-- Second Grid -->
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <img src="images/featured-image-1.jpg" style="height: 250px; width: 250px;" alt= "blood bank today">
    </div>

    <div class="w3-twothird">
      <h1>You should know</h1>
      <h5 class="w3-padding-32">The blood bank provides for the blood requirements of patients within the hospital as well as various other hospitals and nursing homes in the city. The blood bank is licensed to prepare Whole Blood, Packed Red blood Cells, Platelet concentrate, Fresh Frozen plasma, Cryoprecipitate, Single donor platelets (platelets prepared by pheresis), Plasma pheresis and leucodepleted blood.</h5>

      <p class="w3-text-grey">Following blood donation, every blood unit is separated into its components and tested for ABO &amp; Rh blood grouping, Antibody screen, Screening for infectious diseases such as HIV, Hepatitis B, Hepatitis C, Syphilis &amp; Malarial Parasite with highly sensitive and fully automated technologies.</p>
      
    </div>
  </div>
</div>

<section id="about">
<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
    <h1 class="display-4">About US</h1>
    <h1 class="w3-margin w3-xlarge"><p class="lead">
Strength of Blood Beta Ware who's been always dedcated to save other lifes at any cost by provding and receving blood from donor and receiver please feel safe to contact them, whenever u urgently needed the blood. Thank You</p></h1>
</div>
</section>
<!-- Footer -->
<section id="contactus">
<div class="container">
    <div class="row footer">
        <div class="col-lg-3 col-md-3 col-sm-12">
            <div class="col-md-3">
                
                <ul class=" mt-5">
                    <a href="DonateUs.jsp" class=""><i class="fas fa-rupee-sign">&nbsp;DonateUs</i></a>
                   <div class="mb-3"></div>
                    <a href="ContactUs.jsp" class=""><i class="fas fa-phone-square-alt">&nbsp;ContactUs</i></a>
                    <div class="mb-3"></div>
                    <a href="FindBlood.jsp" class=""><i class="fas fa-map-marker-alt">&nbsp;FindBlood</i></a>
                    <div class="mb-3"></div>
                    <a href="#" class=""><i class="fas fa-users">&nbsp;OurTeam</i></a>
                    <div class="mb-3"></div>
                    <a href="#" class=""><i class="fas fa-user-secret">&nbsp;PrivacyPolicy</i></a>
                    <div class="mb-3"></div>
                    <a href="#" class=""><i class="fas fa-atlas">&nbsp;Terms&Conditions</i></a>
                </ul>
            </div>
        </div>
        <div class="col-lg-6 col-md-3 col-sm-12">
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
                    <div class="copyright-text">Design & Develop by  <a target="" href="">dfsf</a></div>
</footer>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3557.1974170037497!2d80.93908459388005!3d26.928955270528228!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfcc6d32a916da8dd!2sFaculty%20Of%20Engineering%20%26%20Technology%2C%20University%20of%20Lucknow!5e0!3m2!1sen!2sin!4v1616150167122!5m2!1sen!2sin" width="600" height="350" style="border:0; padding:25px;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div>
</div>
</section>
  
 
<!--Script -->
<!--<script type="text/javascript" src="files/script.js"></script>-->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>
<script type="text/javascript" src="files/jquery.js"></script>

</body>
</html>
