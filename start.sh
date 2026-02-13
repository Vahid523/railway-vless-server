#!/bin/bash
mkdir -p /etc/xray

# ایجاد certificate خودکار (برای تست)
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout /etc/xray/key.pem -out /etc/xray/cert.pem \
  -subj "/CN=localhost"

echo "Starting Xray..."
xray -c bin/config.json
