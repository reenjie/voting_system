<?php 
session_start();
include 'admin/connection/connect.php';

    if(isset($_GET['svid'])){
        $svid = $_GET['svid'];
      
        $electid = $_SESSION['election_id'];

          $gethtecode = "select * from student where sv_id = '$svid' and election_id = '$electid' ";
                                $getcode = mysqli_query($con,$gethtecode); 
                                while($rowcode = mysqli_fetch_array($getcode)){ 
                                        $codess = $rowcode['password'];
                                       $email = $rowcode['email'];
                                       
                                }
                            ?>
                            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
                            <body style="background-color:#b1eeb1">
                                
                                <h4 style="text-align:center;position: absolute; top:50%;left:50%;transform: translate(-50%,-50%);" ><div class="spinner-grow" style="width:300px; height: 300px;" role="status">
  
                                    </div>
                                    <br>
                                    <span style="">We are Creating your Password <br>Please Wait for a While...</span>
                                </h4>


                            </body>


                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                                 <input type="hidden" id="codess" value="<?php echo $codess;?>">
                                    <input type="hidden" id="emss" value="<?php echo $email?>">  
                                     <script type="text/javascript">
                                  $(document).ready(function() {
                                      
                                
                                   var code = $('#codess').val();
                                           var email = $('#emss').val();
                                    
                                          loadDoc(email);
                                    
                                          function loadDoc(email) {
                                       var xhttp = new XMLHttpRequest();
                                      xhttp.onreadystatechange = function() {
                                       if (this.readyState == 4 && this.status == 200) {
                                      const data = this.responseText;
                                       
                                        // Your condition here if data success.

                                                  window.location.href="upload.php?updateaccount_photo&email="+email;
                                             
                                                   }
                                                };
                                        xhttp.open("GET", "sendmail/emailsendpass.php?compare=1&code="+code+"&email="+email,true);
                                      
                                        xhttp.send();
                                            }
                                            
                                           
                                         });
                                        
                
                                </script>
                            <?php 

    }

    

 ?>