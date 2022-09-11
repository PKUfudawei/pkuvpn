# pkuvpn
Command-line script to access global proxy via PKU VPN

## *Stabler and Simpler by one-line command than GUI*
### 0. OpenConnect Installation (If not installed on your machine)
- Mac OS: `brew install openconnect`

- Linux: `sudo apt-get install openconnect`

### 1. Basic configuration
- Edit `pkuvpn.sh`: follow the annotations in `pkuvpn.sh` to replace `***` with your own passwords or student ID
### 2. Run scirpt
- In this directory: `./pkuvpn.sh`
### 3. Stop proxy
- Just `ctrl+c`
### 4. Make it daily (optinal, replace `$PATH_OF_REPO` with your real path of this repo)
- Add an extra line `alias pkuvpn='$PATH_OF_REPO/pkuvpn.sh'` in your `~/.zshrc` (for Mac OS) or `~/.bashrc` (for Linux)

- `source ~/.zshrc` (for Mac OS) or `source ~/.bashrc` (for Linux)

- Now everything is finished! Just type one-line command `pkuvpn` in ***any directory*** to access your own PKU proxy


## *Appendix*
[Official Introduction to PKU VPN](https://its.pku.edu.cn/service_1_vpn.jsp)

[Clients Installation for PKU VPN](https://its.pku.edu.cn/service_1_vpn_client.jsp)

[OpenConnect Documentation](https://www.infradead.org/openconnect/)
