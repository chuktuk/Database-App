<?php

function send_email($to_address, $to_name, $from_address, $from_name, $subject,
        $body, $is_body_html = false) {
    if (!valid_email($to_address)) {
        throw new Exception('Recipient email address is invalid: ' . 
                htmlspecialchars($to_address));
    }
    if (!valid_email($from_address)) {
        throw new Exception('Sender email address is invalid: ' .
                htmlspecialchars($from_address));
    }
        
    require('PHPMailer-master/src/PHPMailer.php');
    require('PHPMailer-master/src/Exception.php');
    require('PHPMailer-master/src/SMTP.php');
    // set gmail account and protocol
    $mail = new PHPMailer\PHPMailer\PHPMailer();
    $mail->isSMTP();
    $mail->SMTPDebug = 0; // set to 2 to test, but back to 0 after
    $mail->SMTPAuth = true;  // new line
    $mail->Host = 'smtp.gmail.com';
    $mail->Port = 465;
    $mail->SMTPSecure = 'ssl';
    $mail->Username = "apptestemail0@gmail.com"; // app tester email acct
    $mail->Password = "Gr8Pa55word!";
    
    // set to, from, subject, and body
    $mail->setFrom($from_address, $from_name);
    $mail->addAddress($to_address, $to_name);
    $mail->Subject = $subject;
    $mail->Body = $body;
    $mail->AltBody = strip_tags($body);
    if($is_body_html) {
        $mail->isHTML(true);
    }
    if (!$mail->send()) {
        throw new Exception('Error sending email: ' .
                htmlspecialchars($mail->ErrorInfo) );
    }
    
}

function valid_email($email) {
    if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
        return false;
    } else {
        return true;
    }
}
?>