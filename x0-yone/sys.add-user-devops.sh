#!/usr/bin/env bash
sudo true

account=devops
sshkey="# Added by DevOps
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDvj0dbxjtc+N1kolIA+jeHqvLRK6Zf9Lno5Ib87UZPwije6Ge76EgeH67/hiWWEVGtHq4qT//gkaxW392n1mU5vBzIg8XwlkF8zbB9KNKJpl/r9P8yCqPtsQE3YL+5OiHfXk9wZ95Nv3G0yayqY/pvGA1i5aSLF5qqaHSTQc+1JpPgF8cvN0a5powiP9klLeTmm0YA1jRYA/xtIqgtB7DvllOAXRQNYut3mpkXcTS7/N0p6y3MOut8KBBGPr79XY/YuZdYpsqlNDOT6tmPN5/AVN4MzYgnbC4MfdQRLkFlKdhsLZiGmFJvzCPxwDiQZungC8BBjSpAuiW1ZHtnZ87n"

if getent passwd $account > /dev/null 2>&1; then
    echo "==> THIS USER EXISTS!!!!"
else
    echo "==> THIS USER DOES NOT EXISTS =>> Initial user ..."
    sudo /usr/sbin/useradd -m $account -s /bin/bash
    sudo /bin/mkdir /home/$account/.ssh
    ## Add sshkey
    grep -rl "$sshkey" /home/$account/.ssh/authorized_keys
    if [ $? != 0 ]
    then
        echo "$sshkey" | sudo tee --append /home/$account/.ssh/authorized_keys > /dev/null
    fi
    ## Add sudo perms
    sudo grep -rl "$account" /etc/sudoers
    if [ $? != 0 ]
    then
        echo "$account ALL=(ALL) NOPASSWD: ALL" | sudo tee --append /etc/sudoers > /dev/null
    fi
    sudo chown -R $account.$account /home/$account
    sudo cat /home/$account/.ssh/authorized_keys
    sudo usermod -aG docker $account
    echo "DONE !!"
fi
