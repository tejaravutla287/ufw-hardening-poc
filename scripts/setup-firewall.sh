#!/bin/bash
echo "=== Starting UFW Firewall Hardening ==="

# Set strict defaults
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Open required web and custom management ports
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 2222/tcp

# Turn on system logs for connection auditing
sudo ufw logging on

# Force enable UFW bypasses interactive confirmation prompts
sudo ufw --force enable

echo "=== UFW Rules Successfully Applied! ==="
