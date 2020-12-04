<?php

header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json; charset=UTF-8');

$results = [];

$visitor_name = '';
$visitor_email = '';
$visitor_message = '';
$visitor_topic = '';

if (isset($_POST['topic']) && $_POST['topic'] !='') {
    $visitor_topic = filter_var($_POST['topic'], FILTER_SANITIZE_STRING);
} else {
    $results['message'] = 'Topic is not selected';
    echo json_encode($results);
    exit;
}

if (isset($_POST['firstname']) && $_POST['firstname'] !='') {
    $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_STRING);
} else {
    $results['message'] = 'First Name is missing';
    echo json_encode($results);
    exit;
}

if (isset($_POST['lastname']) && $_POST['lastname'] !='') {
    $visitor_name .= ' '.filter_var($_POST['lastname'], FILTER_SANITIZE_STRING);
} else {
    $results['message'] = 'Last Name is missing';
    echo json_encode($results);
    exit;
}

if (isset($_POST['email']) && $_POST['email'] !='') {
    $visitor_email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
} else {
    $results['message'] = 'Email address is missing';
    echo json_encode($results);
    exit;
}

if (isset($_POST['message']) && $_POST['message'] !='') {
    $visitor_message = filter_var(htmlspecialchars($_POST['message']), FILTER_SANITIZE_STRING);
} else {
    $results['message'] = 'No text in the message field';
    echo json_encode($results);
    exit;
}

$email_headers = array(
    'From'=>$visitor_email
);

$email_subject = sprintf('Inquiry from Portfolio site, topic: %s', $topic);
$email_recipient = "jordanjaded@hotmail.com";  // email address here
$email_message = sprintf('Name: %s, Email %s, Message: %s', $visitor_name, $visitor_email, $visitor_message);

$email_result = mail($email_recipient, $email_subject, $email_message, $email_headers);

if ($email_result) {
    $results['message'] = 'Email submission successful';
} else {
    $results['message'] = 'Error, you broke it! Email did not send!';
}

echo json_encode($results);