#!/bin/bash

# provision.sh
set -e

echo "Starting provisioning on $(hostname)"
echo "Timestamp: $(date)"

# Update system packages
if command -v apt-get &> /dev/null; then
    # Ubuntu/Debian
    apt-get update
    apt-get upgrade -y
    apt-get install -y nginx git curl
elif command -v yum &> /dev/null; then
    # CentOS/RHEL/Oracle Linux
    yum update -y
    yum install -y nginx git curl
elif command -v dnf &> /dev/null; then
    # Fedora/Oracle Linux 8+
    dnf update -y
    dnf install -y nginx git curl
fi

# Start and enable nginx
systemctl enable nginx
systemctl start nginx

# Create a simple web page
cat > /var/www/html/index.html << EOF
<!DOCTYPE html>
<html>
<head>
    <title>Provisioned Server</title>
</head>
<body>
    <h1>Successfully Provisioned!</h1>
    <p>Hostname: $(hostname)</p>
    <p>Date: $(date)</p>
</body>
</html>
EOF

# Create provisioning log
echo "Provisioning completed successfully at $(date)" > /var/log/provisioning.log

echo "Provisioning completed on $(hostname)"