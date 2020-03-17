<?php
 function mymailer($sender_name,$sender_mail,$rec_mail,$subject,$message) 
 {
        $mail = new PHPMailer(true); //defaults to using php "mail()"; the true param means it will throw exceptions on errors, which we need to catch

        try {
          $mail->CharSet = 'windows-1256';
          $mail->AddAddress($rec_mail);
          $sender_name        = "=?windows-1256?B?".base64_encode($sender_name)."?=\n"; 
          $mail->SetFrom($sender_mail, $sender_name);
          $subject    = "=?windows-1256?B?".base64_encode($subject)."?=\n";
          $mail->Subject = $subject;
          $mail->AltBody = 'To view the message, please use an HTML compatible email viewer!'; // optional - MsgHTML will create an alternate automatically
          $mail->MsgHTML($message);
          $mail->Send();

          return 1 ;
          
        } catch (phpmailerException $e) {
          return $e ;

        } catch (Exception $e) {
          return $e ;
        }
}

?>
