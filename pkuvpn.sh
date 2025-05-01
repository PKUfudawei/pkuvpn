#!/usr/bin/expect

## modify *** to root user password on your local machine
set root_pwd ***
## modify *** to your PKU student ID
set pku_stu_id ***
## modify *** to password for your PKU student ID
set pku_stu_pwd ***

spawn sudo openconnect --protocol=pulse https://vpn.pku.edu.cn

expect "Password:"
send "$root_pwd\r"

expect "Username:"
send "$pku_stu_id\r"

expect "Password:"
send "$pku_stu_pwd\r"

interact
