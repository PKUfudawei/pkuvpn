#!/usr/bin/expect

## modify *** to root user password on your local machine
set root_pwd ***
## modify *** to your PKU student ID
set pku_stu_id ***
## modify *** to password for your PKU student ID
set pku_stu_pwd ***

spawn sudo openconnect --protocol=nc https://vpn.pku.edu.cn

expect "*Password*"
send "$root_pwd\r"

expect "username:"
send "$pku_stu_id\r"

expect "password:"
send "$pku_stu_pwd\r"

interact
