new_user=app_python
pass="YXJpYQo="
# pass="data"

sudo useradd -m -s /bin/bash $new_user
echo "$new_user:$pass" | sudo chpasswd
echo "PasswordAuthentication yes" | sudo tee /etc/ssh/sshd_config.d/60-cloudimg-settings.conf
sudo systemctl restart ssh
sudo systemctl restart sshd