<%-- 
    Document   : M_Organization
    Created on : May 4, 2021, 2:34:40 PM
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
                                                 <a href="" class="btn btn-success btn-md"><span class="fas fa-bell">&nbsp;</span>
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
                                         <div class="col-lg-2 col-md-2 col-sm-12">
                                             <ul class="nav nav-pills flex-column">
                                                 <li class="nav-item">
                                                <a class="nav-link" href="Dashboard.jsp">Home</a>
                                                  </li>
                                                 <li class="nav-item">
                                               <a class="nav-link active" href="M_Organization.jsp">Organization/Hospitals</a>
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
                                         <div class="col-lg-10 col-md-10 col-sm-12">
                                           
                  <div class="container-fluid mt-2">
                                 <div class="row">
                                     <div class="col-lg-12 col-md-12 col-sm-12">
                                         <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 <tr colspan="6"><h3>Organization's List</h3></tr>
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Mobile</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Available</th>
                                                     <th>ServiceTime</th>
                                                     <th>Lic-Num</th>
                                                     <th>Lic_date</th>
                                                     <th>Pincode</th>
                                                     <th colspan="3">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                    
                                                     db.pstmt=db.con.prepareStatement("select * from register_hospitals_bborganization");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String org_hosp_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><%=db.rst.getString(10)%></td>
                                                    <td><%=db.rst.getString(11)%></td>
                                                     <td><%=db.rst.getString(12)%></td>
                                                    <td><%=db.rst.getString(8)%></td>
                                                     <td><a href="delete_organization.jsp?org_hosp_id=<%=org_hosp_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     <td><button class="btn btn-primary edit_org" data-toggle="modal" ><i class="fa fa-edit">&nbsp;</i></button></td>
                                                     <td><a href="View_Organization.jsp?org_hosp_id=<%=org_hosp_id%>" class="btn btn-success"><i class="fas fa-eye">&nbsp;</i></a></td>
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                                     </div>
                                 </div>
                             </div>                                              
                          
                                         </div>
                                         
                                     </div>
                                         
                                         <!--Edit Organization-->       
   <div class="modal fade" id="edit_org" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-danger text-white card-header">
        <h5 class="modal-title" id="exampleModelModel">Update Organization Detail's</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body bg-dark text-white">
          
          <form id="edit_form" action="edit_org.jsp">
              <div class="form-group">
            <label>Org_Hosp_Id</label>
            <input type="text" class="form-control" name="org_hosp_id" id="org_hosp_id" readonly/>
            </div>
          <div class="form-group">
            <label>Org/Hospital Name</label>
            <input type="text" class="form-control" name="oname" id="oname" placeholder="Organization/Hospital Name" readonly/>
            <small id="" class="form-text text-muted"></small>
          </div>
               <div class="form-group">
            <label>Mobile</label>
            <input type="text" minlength="10" maxlength="10" class="form-control" name="mob" id="mob" placeholder="Mobile">
            <small id="" class="form-text text-muted"></small>
          </div>
              <div class="form-group">
            <label>City</label>
            <input type="text" class="form-control" name="city" id="city" placeholder="City">
            <small id="" class="form-text text-muted"></small>
          </div>
<div class="form-group">
    <label>State</label>
     <select class="form-control" name='state' id="state">
<option class="hidden"  selected disabled>State</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
</select>
          </div>
                                    <div class="form-group">
                                         <label>Blood Component Available</label>
                                        <select class="form-control" name='bca' id="bca">
                                             <option class="hidden"  selected disabled>Blood Component Available</option>
                                             <option value="Yes">Yes</option>
                                             <option value="No">No</option>
                                            </select>
                                     </div>
              
                                  <div class="form-group">
                                       <label>Service Time</label>
                                           <select class="form-control" name='st' id="st">
                                             <option class="hidden"  selected disabled>Service Time</option>
                                             <option value="24Hr">24Hr</option>
                                             <option value="12Hr">12Hr</option>
                                            </select>
                                   </div>
              
              <div class="form-group">
            <label>License Number</label>
            <input type="text" class="form-control" name="lcn_no" id="lcn_no" placeholder="License Number">
            <small id="" class="form-text text-muted"></small>
          </div>
              <div class="form-group">
            <label>License Date</label>
            <input type="date" class="form-control" name="lcn_date" id="lcn_date" placeholder="License Date">
            <small id="" class="form-text text-muted"></small>
          </div>
             <div class="form-group">
            <label>Pincode</label>
            <input type="text" minlength="6" maxlength="6" class="form-control" name="pncd" id="pncd" placeholder="Pincode">
            <small id="" class="form-text text-muted"></small>
          </div>
              
            <button type="submit" class="btn btn-primary"><i class="fa fa-edit">&nbsp;</i> Update</button>
        </form>
      </div>
    </div>
  </div>
</div>
                                     
                                     
 <!--Script -->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/jquery.js"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>

                      <script>
        $(document).ready(function(){      
                     $('.edit_org').on('click',function(){
                     $('#edit_org').modal('show');
                     $tr=$(this).closest('tr');   
                     var data=$tr.children('td').map(function(){   
                     return $(this).text();  
                     }).get(); 
                   
                     console.log(data);
                     $('#org_hosp_id').val(data[0]);
                     $('#oname').val(data[1]);
                     $('#mob').val(data[2]);
                     $('#city').val(data[3]);
                     $('#state').val(data[4]);
                     $('#bca').val(data[5]);
                     $('#st').val(data[6]);
                     $('#lcn_no').val(data[7]);
                     $('#lcn_date').val(data[8]);
                     $('#pncd').val(data[9]);
                     });
                     });
    </script>                
    </body>
</html>
