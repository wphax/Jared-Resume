<?
header( 'content-type: application/json' );

$response = array( 'status' => false, 'message' => 'Unknown error.' );

$sender_name = $_POST[ 'sender_name' ];
$sender_email = $_POST[ 'sender_email' ];
$message = $_POST[ 'message' ];
$headers = 'From: ' . $sender_email . "\r\n" . 'Reply-To: ' . $sender_email . "\r\n" . 'X-Mailer: PHP/' . phpversion();

$sent = mail( 'info@wphax.com', 'Contact Form Submission @ wphax.com', "From: $sender_name\r\nMessage: $message", $headers );

if( $sent ) {
	$response[ 'status' ] = true;
	$response[ 'message' ] = 'Email sent!';
} else {
	$response[ 'message' ] = 'Error sending email.';
}

echo json_encode( $response );
exit;