<?php
session_start();
 include '../admin/connection/connect.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;



include 'PHPMailer/Exception.php';
include 'PHPMailer/PHPMailer.php';
include 'PHPMailer/SMTP.php';

$mail = new PHPMailer;
$mail->isSMTP(); 

$mail->SMTPDebug = 2; // 0 = off (for production use) - 1 = client messages - 2 = client and server messages
$mail->Host = "smtp.gmail.com"; // use $mail->Host = gethostbyname('smtp.gmail.com'); // if your network does not support SMTP over IPv6
$mail->Port = 587; // TLS only
$mail->SMTPSecure = 'tls'; // ssl is deprecated
$mail->SMTPAuth = true;

if(isset($_POST['sendotp'])){ 
    $email = $_POST['email'];
    $sid = $_SESSION['voter_login'];
            $sql = " SELECT * FROM `student` where s_id ='$sid'  ";
                    $result = mysqli_query($con,$sql); 
                   
                     while($row = mysqli_fetch_array($result)){
                        $code = $row['logincode'];
                     }
              


    
}
  
$mail->Username = 'wmsuiscvotingsystem@gmail.com'; // email
$mail->Password = 'WMSUISC_VotingSystem01'; // password
$mail->setFrom('wmsuiscvotingsystem@gmail.com', 'WMSU-ISC'); // From email and name
$mail->addAddress($email,$email); // to email and name
$mail->Subject = 'ONE-TIME-PIN';
$mail->msgHTML("
<h3>Your ONE-TIME-PIN is : <span style='font0size:20px'>$code</span>  </h3>


<h5>No one can access your account without accessing this email. <br><br>Vote Wisely.</h5>
");
$mail->AltBody = 'HTML messaging not supported'; // If html emails is not supported by the receiver, show this body
// $mail->addAttachment('images/phpmailer_mini.png'); //Attach an image file
$mail->SMTPOptions = array(
                    'ssl' => array(
                        'verify_peer' => false,
                        'verify_peer_name' => false,
                        'allow_self_signed' => true
                    )
                );
if(!$mail->send()){
    echo "Mailer Error: " ;
}else{
    //echo "Message sent!";
}
?>

