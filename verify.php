<?php
session_start();
include 'admin/connection/connect.php';
include 'admin/connection/fetch_data.php';
$fetch = new Fetch_data();

	if(isset($_POST['txtmail'])) {
										$email = $_POST['txtmail'];
						 	 						$name = $_POST['txtname'];
						 	 						$surname = $_POST['txtsurname'];
						 	 						$middlename = $_POST['txtinit'];
						 	 						$gender = $_POST['gender'];
						 	 						$year = $_POST['yr'];
						 	 						$course = $_POST['txtcourse'];
													$tempid = $_SESSION['temp'];
													$txtcode = $_POST['txtcode'];
													$txtsection = $_POST['txtsection'];
					$svid = substr($email, 0, strpos($email,'@'));
					$elecid= $_SESSION['election_id'];
	
		
							$sqlses = " select * from temp where tempid = '$tempid'  ";
									             	                $results = mysqli_query($con,$sqlses); // run query
									             	               
									             	                 while($row = mysqli_fetch_array($results)){
									             							$code = $row['code'];
					  }
		
		if($txtcode == '') {

			echo 'noinput';
		
		}else if($txtcode == $code)


		{

			echo $svid ;
			
				
	 date_default_timezone_set('Asia/Manila');
  $datenow = date('Y-m-d H:i:s');

   $conditions = "`sv_id`, `name`, `surname`, `middle_name`, `gender`, `course`,`year`,`section`, `date_registered`, `email`,`logintype`, `election_id`,`con`";
   $insertvalue = " '$svid','$name','$surname','$middlename','$gender','$course','$year','$txtsection','$datenow','$email','personal','$elecid' ,1 ";
    $fetch = new Fetch_data();
    $fetch -> insertquery('student',$conditions,$insertvalue);
			
		

			function createRandomPassword() { 

						    $chars = "abcdefghijkmnopqrstuvwxyz023456789"; 
						    srand((double)microtime()*1000000); 
						    $i = 0; 
						    $pass = '' ; 

						    while ($i <= 7) { 
						        $num = rand() % 33; 
						        $tmp = substr($chars, $num, 1); 
						        $pass = $pass . $tmp; 
						        $i++; 
						    } 

						    return $pass; 

						} 
						$s = createRandomPassword();
						 $updatedvalues = "`password` = '$s'";
						   $wherecondition = "sv_id = '$svid'";
						    $fetch = new Fetch_data();
						    $fetch -> updatequery('student',$updatedvalues,$wherecondition);
						    
					  

		}	else {

			echo 'invalid';
		
		}
		

	}
	if(isset($_POST['resend'])) {

	}

	if(isset($_POST['checkforsimilar'])) {
		
		$values = $_POST['values'];
		$elec = $_SESSION['election_id'];

				 if (preg_match("~@wmsu\.edu.ph$~",$values)){
									
								$sql = " select * from student where email = '$values' and election_id = '$elec'  ";
			                $result = mysqli_query($con,$sql); 
			                $count= mysqli_num_rows($result); 
			              
			             if ($count==1){
			             	echo 'exist';
			           
						          }else {
						          	echo 'proceed';

						          }

								} else {
									echo 'notmatch';
								}
		
					
	}
	
	

?>