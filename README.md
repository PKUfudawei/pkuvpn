# pkuvpn

A command-line script to VPN into PKU’s internal network and seamlessly route traffic through proxy tools like Clash.

## Prerequisites

Before using the script, ensure you have `openconnect` installed on your system.

-   **macOS:**
    ```bash
    brew install openconnect
    ```
-   **Linux (Debian/Ubuntu):**
    ```bash
    sudo apt-get update && sudo apt-get install openconnect
    ```
-   **Linux (Fedora):**
    ```bash
    sudo dnf install openconnect
    ```
-   **Windows:**
    -   Download and install the official OpenConnect GUI client from [here](https://github.com/openconnect/openconnect-gui/releases).
    -   Alternatively, you can use `openconnect` via the Windows Subsystem for Linux (WSL) by following the Linux instructions within your WSL distribution.

## Installation & Configuration

1.  **Clone the repository (if you haven't already):**
    ```bash
    git clone https://github.com/madeyexz/pkuvpn.git
    cd pkuvpn
    ```
2.  **Edit `pkuvpn.sh`:**
    -   Open the `pkuvpn.sh` script in a text editor.
    -   Follow the comments within the script to replace placeholder values (like `***`) with your PKU username (student ID) and password.

## First-Time Verification (Important!)

Before using the `pkuvpn.sh` script for the first time, you **must** manually connect once to handle initial verification prompts from the PKU VPN service. Open your terminal and run:

```bash
sudo openconnect --protocol=pulse https://vpn.pku.edu.cn
```

Enter your PKU username and password when prompted. Follow any on-screen instructions. Once successfully connected, you can disconnect (usually with `Ctrl+C`) and proceed to use the script.

## Usage

1.  **Navigate to the directory:**
    Make sure you are in the `pkuvpn` directory where the script is located.
2.  **Run the script:**
    ```bash
    ./pkuvpn.sh
    ```
    This will initiate the VPN connection and set up the proxy.
3.  **Stop the proxy:**
    Press `Ctrl+C` in the terminal where the script is running.

## Example Use Case: SSH and VS Code Remote

Once the `pkuvpn.sh` script is running and the VPN connection is active, your machine effectively becomes part of the PKU internal network. This allows you to:

-   **Connect to internal resources via SSH:** For example, you can SSH into your lab server which might only be accessible from within the campus network.
    ```bash
    ssh your_username@your_lab_server_ip_or_hostname
    ```
-   **Use VS Code Remote Development:** Tools like VS Code's Remote - SSH extension will now be able to connect to your lab server or other internal machines seamlessly through the established VPN tunnel.

These are my personal usecases.

## Optional: Create a Global Alias

To run the script from any directory using a simple command like `pkuvpn`:

1.  **Identify your shell configuration file:**
    -   For **zsh** (common on macOS): `~/.zshrc`
    -   For **bash** (common on Linux): `~/.bashrc`
2.  **Add the alias:**
    Open your shell configuration file and add the following line, **replacing `/path/to/your/pkuvpn/repo` with the actual absolute path** to the directory where you cloned this repository:
    ```bash
    alias pkuvpn='/path/to/your/pkuvpn/repo/pkuvpn.sh'
    ```
3.  **Apply the changes:**
    Run `source ~/.zshrc` (for zsh) or `source ~/.bashrc` (for bash).

Now you can simply type `pkuvpn` in your terminal from anywhere to start the VPN connection.

## Appendix

-   [Official Introduction to PKU VPN](https://its.pku.edu.cn/service_1_vpn.jsp)
-   [Clients Installation for PKU VPN](https://its.pku.edu.cn/service_1_vpn_client.jsp)
-   [OpenConnect Documentation](https://www.infradead.org/openconnect/)

## License

MIT License
