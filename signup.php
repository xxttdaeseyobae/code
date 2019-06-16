<?php
require_once('topnavigation.php');
require_once('class/user.class.php');
$user = new user;

if(isset($_POST['submit']))
{
  $register = $user->save();
  if(is_integer($register))
  {
    $msg = 'Register Successful';
  }
  else
  {
    $msg = 'Register Unsuccessful';
  }
}
?>

<div class="pageTitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-6">
        <h1 class="page-heading">   User Registration</h1>
      </div>
      <div class="col-md-6 col-sm-6">
        <div class="breadCrumb"><a href="#.">Home</a> / <span>Sign Up</span></div>
      </div>
    </div>
  </div>
</div>
<!-- Page Title End -->
<div class="listpgWraper">
  <div class="container">
    <div class="row">
      
        <div class="userccount">
        <div class="tab-content">        
        <form action="" method="post">
            <?php if(isset($msg))
            echo $msg;
           ?>
         <div id="wsell" class="formpanel tab-pane fade in active">
            <div class="formrow">
         <label>First Name</label>
         <input type="text" name="firstname" class="form-control" placeholder="firstname" required>
         </div>
                <div class="formrow">
         <label>Last Name</label>
         <input type="text" name="lastname" class="form-control" placeholder="lastname" required>
         </div>
              
         <div class="formrow">
         <label>Email</label>
         <input type="text" name="email" class="form-control" placeholder="email" required>
         </div>
              
           <div class="formrow">
                    <label> Phone Number:</label>
                  <input type="number" name="phonenumber" class="form-control" placeholder="Phone Number" required>
                </div>
         
           
               
                    <div class="formrow">
                        <label>Location</label>
                        <input type="text" name="location" class="form-control" placeholder="Location" required>
                    </div>
               
               
                    <div class="formrow">
                        <label>Date Of Birth</label>
                        <input type="date"  class="form-control " placeholder="Date of Birth" name="dateofbirth" required>
                    </div>
           

                    <div class="formrow">
                        <label>Password</label>
                        <input type="password"  class="form-control " placeholder="password" name="password" required>
                    </div>
              
              <input type="submit" name="submit"id="submitbutton" class="btn" value="Submit">
               
            </div>

              </form>
          </div>
      </div>
      </div>
 
   </div>
<?php
include('footer.php');
?>

 

