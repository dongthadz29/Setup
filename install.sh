#!/bin/bash

echo "Bắt đầu quá trình cài đặt các gói cần thiết cho Termux..."
echo "---"

# Yêu cầu quyền truy cập bộ nhớ của điện thoại
termux-setup-storage

# Cập nhật và nâng cấp hệ thống Termux
echo "Đang cập nhật và nâng cấp Termux..."
apt update -y
apt upgrade -y
echo "Đã hoàn thành cập nhật và nâng cấp."
echo "---"

# Cài đặt các gói cơ bản
echo "Đang cài đặt các gói cơ bản (php, python, git, wget)..."
pkg install php -y
pkg install python -y
pkg install git -y
pkg install wget -y
echo "Đã cài đặt xong các gói cơ bản."
echo "---"

# Cài đặt và nâng cấp các thư viện Python
echo "Đang cài đặt và nâng cấp các thư viện Python..."
pip install --upgrade pip
pip install requests pycurl urllib3 idna certifi colorama uuid pytz websocket-client
echo "Đã cài đặt xong tất cả các thư viện Python."
echo "---"

echo "Quá trình cài đặt đã hoàn tất! Bạn đã sẵn sàng sử dụng."
