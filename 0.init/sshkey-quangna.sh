#!/usr/bin/env bash
## 1. Add public key to Server:
sshkey="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2uCjp6sKsjU4aZwcC8SYalsnPzNwyL6rE8gp/1SpkmTgb9h3fGnhBkNMWAJRhyoeGCjH1/mqlkSMXkUHPsb1HOPr40HEZefbvNDjBBNrMkfAJS0tk6FqT28+YJZcO1tFdyOo2URC4nY5gbVanOu47PgJYtOVd2+INrFX1YogtfigR+DB6Pn8dB74DOmnAbo/EFtY+IbuSGP5da3BmlyruZgE/yO/OhcyEUREQRIXWfjU489q+6pwLTmJk1ls60XuNeYA2/vmlOCFJIWiJTR0KWhYbpB9SSZj8OjlEgmqZqp90ZaN+0aBKDkuwx8QizCBDHVfzQg9BObEe2hEx1ly/ quangna"
echo "$sshkey" >> /home/$(whoami)/.ssh/authorized_keys
