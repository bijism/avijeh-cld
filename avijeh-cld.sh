#!/bin/bash

# Create the userinfo.sh file
cat <<EOF > /etc/profile.d/userinfo.sh
if [ -n "\$SSH_CLIENT" ]; then
    SERVER_NAME=\$(hostname)
    USERNAME=\$(whoami)
    IP=\$(hostname -I | awk '{print \$1}')
    COUNTRY=\$(whois \$(curl -s ipinfo.io/ip) | awk -F':' '/^Country/ { print \$2 }')
    BROWSER=\$(echo \$HTTP_USER_AGENT | awk -F'"' '{print \$6}')
    OS=\$(uname -a | awk '{print \$1,\$3}')
    TIME=\$(date)

    echo "ServerName: \$SERVER_NAME"
    echo "Username: \$USERNAME"
    echo "IP: \$IP"
    echo "Country: \$COUNTRY"
    echo "Browser: \$BROWSER"
    echo "OS: \$OS"
    echo "Time: \$TIME"

    mail -s "User Information" bijan.behvandi@gmail.com <<EOF2
ServerName: \$SERVER_NAME
Username: \$USERNAME
IP: \$IP
Country: \$COUNTRY
Browser: \$BROWSER
OS: \$OS
Time: \$TIME
EOF2
fi
EOF

# Make the file executable
chmod +x /etc/profile.d/userinfo.sh

# Execute the file to send an email with the information for the current user
/etc/profile.d/userinfo.sh
