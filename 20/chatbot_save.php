<?php
// api/chatbot_save.php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");

include_once '../config/database.php';

$database = new Database();
$db = $database->getConnection();

$data = json_decode(file_get_contents("php://input"));

if(!empty($data->session_id) && !empty($data->message)) {
    
    // Get or create conversation
    $query = "SELECT conversation_id FROM chatbot_conversations WHERE session_id = :session_id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(":session_id", $data->session_id);
    $stmt->execute();
    
    if($stmt->rowCount() > 0) {
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $conversation_id = $row['conversation_id'];
    } else {
        // Create new conversation
        $query = "INSERT INTO chatbot_conversations (session_id, user_ip, status) 
                  VALUES (:session_id, :user_ip, 'active')";
        $stmt = $db->prepare($query);
        $stmt->bindParam(":session_id", $data->session_id);
        $stmt->bindParam(":user_ip", $_SERVER['REMOTE_ADDR']);
        $stmt->execute();
        $conversation_id = $db->lastInsertId();
    }
    
    // Save message
    $query = "INSERT INTO chatbot_messages 
              (conversation_id, sender_type, message_text, intent) 
              VALUES (:conversation_id, :sender_type, :message_text, :intent)";
    
    $stmt = $db->prepare($query);
    $stmt->bindParam(":conversation_id", $conversation_id);
    $stmt->bindParam(":sender_type", $data->sender_type);
    $stmt->bindParam(":message_text", $data->message);
    $stmt->bindParam(":intent", $data->intent);
    
    if($stmt->execute()) {
        http_response_code(201);
        echo json_encode(array(
            "message" => "Message saved successfully.",
            "conversation_id" => $conversation_id
        ));
    } else {
        http_response_code(503);
        echo json_encode(array("message" => "Unable to save message."));
    }
} else {
    http_response_code(400);
    echo json_encode(array("message" => "Incomplete data."));
}
?>