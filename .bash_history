nano system_report.sh
# Gather system information
USERNAME=$(whoami)
DATE_TIME=$(date)
HOSTNAME=$(hostname)
OS=$(source /etc/os-release && echo "$PRETTY_NAME")
UPTIME=$(uptime -p)
CPU=$(lscpu | grep "Model name" | cut -d ':' -f2 | xargs)
RAM=$(free -h | awk '/^Mem:/ {print $2}')
DISK_INFO=$(lsblk -o MODEL,SIZE | grep -v "MODEL")
VIDEO_CARD=$(lshw -C display 2>/dev/null | grep "product" | cut -d ':' -f2 | xargs)
FQDN=$(hostname --fqdn)
HOST_IP=$(ip route get 1 | awk '{print $7; exit}')
GATEWAY_IP=$(ip route | grep default | awk '{print $3}')
DNS_SERVER=$(grep "nameserver" /etc/resolv.conf | awk '{print $2}' | head -n 1)
USERS_LOGGED_IN=$(who | awk '{print $1}' | sort | uniq | paste -sd ", ")
DISK_SPACE=$(df -h --output=source,avail | grep '^/' | awk '{print $1 ": " $2}' | paste -sd ", ")
PROCESS_COUNT=$(ps aux | wc -l)
LOAD_AVERAGES=$(uptime | awk -F 'load average:' '{print $2}' | xargs)
LISTENING_PORTS=$(ss -tuln | awk '{print $5}' | grep -Eo '[0-9]+$' | sort -n | uniq | paste -sd ", ")
UFW_STATUS=$(sudo ufw status | grep "Status" | awk '{print $2}')
nano system_report.sh
chmod +x system_report.sh
./system_report.sh
git init
git add system_report.sh
git commit -m "Add system information report script"
git config --global user.name "Hemraj"
git config --global user.email "hemrajwpp@gmail.com" 
git commit -m "Add system information report script"
git add system_report.sh
git add .
git commit -m "Add system information report script"
git add system_report.sh
git commit -m "Add system information report script"
git status
https://github.com/HemRajXettry/Hem-Raj-Thapa.git
git remote add origin https://github.com/HemRajXettry/Hem-Raj-Thapa.git
git push -u origin master
git remote add origin https://github.com/HemRajXettry/Hem-Raj-Thapa.git
git push -u origin master
nano system_report.sh
./system_report.sh
source /etc/os-release && echo "$PRETTY_NAME"
uptime -p
lscpu | grep "Model name"
sudo lshw -C display
lsblk -o MODEL,SIZE
# Correctly fetching system information
OS=$(source /etc/os-release && echo "$PRETTY_NAME")
UPTIME=$(uptime -p)
sudo ./system_report.sh
nano system_report.sh
sudo ./system_report.sh
chmod +x system_report.sh
./system_report.sh
git init
git add system_report.sh
git commit -m "Add system information report script"
