<?php
session_start();
include 'connection/connect.php';
	if(isset($_POST['yesfetch'])) {
		$shid = $_POST['shid'];
$idcurrent = $_SESSION['electsched'];

 $letstudentupt="UPDATE `student` SET `toupdate`='1' WHERE 1 ";
                      mysqli_query($con,$letstudentupt);

			$update = "UPDATE `election_sched` SET `status`='inactive' WHERE  election_id='$idcurrent'";
			$resupdate = mysqli_query($con,$update); 
			if($resupdate) {
						unset($_SESSION['electsched']);
						$updatetoselected = "UPDATE `election_sched` SET `status`='active' WHERE  election_id='$shid'";
						$resupdateselected = mysqli_query($con,$updatetoselected); 
					if($resupdateselected) {
							

							$sql = " select * from election_sched where election_id = '$shid'  ";
			                $result = mysqli_query($con,$sql); 
			                $count= mysqli_num_rows($result); 
			               
			               if($count >=1){
			           
			                 while($row = mysqli_fetch_array($result)){
								$_SESSION['electsched'] = $row['election_id'];	
			                 }
			            
									      header("location:election.php");
			             }		
					


					}
				
			}
			
		
			
					
			          

	}

?>