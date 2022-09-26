#!/usr/bin/env bash
mkdir -p ~/.ssh
sshkey="# Added by DevOps
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDvj0dbxjtc+N1kolIA+jeHqvLRK6Zf9Lno5Ib87UZPwije6Ge76EgeH67/hiWWEVGtHq4qT//gkaxW392n1mU5vBzIg8XwlkF8zbB9KNKJpl/r9P8yCqPtsQE3YL+5OiHfXk9wZ95Nv3G0yayqY/pvGA1i5aSLF5qqaHSTQc+1JpPgF8cvN0a5powiP9klLeTmm0YA1jRYA/xtIqgtB7DvllOAXRQNYut3mpkXcTS7/N0p6y3MOut8KBBGPr79XY/YuZdYpsqlNDOT6tmPN5/AVN4MzYgnbC4MfdQRLkFlKdhsLZiGmFJvzCPxwDiQZungC8BBjSpAuiW1ZHtnZ87n DevOps"
echo "$sshkey" >> /home/$(whoami)/.ssh/authorized_keys
