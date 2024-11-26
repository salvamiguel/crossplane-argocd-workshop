# Installation Guide: Docker and Minikube on Unix-like Systems and Windows (Using WSL)

This guide explains how to install Docker and Minikube on Unix-like systems (Linux/macOS) and on Windows using the Windows Subsystem for Linux (WSL).

---

## Table of Contents
- [Installation Guide: Docker and Minikube on Unix-like Systems and Windows (Using WSL)](#installation-guide-docker-and-minikube-on-unix-like-systems-and-windows-using-wsl)
  - [Table of Contents](#table-of-contents)
  - [Installing Docker on Unix-like Systems](#installing-docker-on-unix-like-systems)
    - [Prerequisites](#prerequisites)
    - [Steps for Linux](#steps-for-linux)
    - [Steps for MacOSX](#steps-for-macosx)
  - [Installing Minikube on Unix-like Systems](#installing-minikube-on-unix-like-systems)
    - [Prerequisites](#prerequisites-1)
    - [Steps](#steps)
  - [Installing WSL on Windows](#installing-wsl-on-windows)
    - [Steps](#steps-1)
  - [Installing Docker and Minikube in WSL](#installing-docker-and-minikube-in-wsl)
    - [Prerequisites](#prerequisites-2)

---


## Installing Docker on Unix-like Systems

### Prerequisites
- **Supported OS:** Linux (Debian/Ubuntu/Fedora/CentOS) or macOS
- Root or sudo access

### Steps for Linux
1. **Update your package index:**
   ```bash
   sudo apt-get update
   ```
2.	**Install dependencies:**
    ```bash 
    sudo apt-get install -y \ 
        ca-certificates \
        curl \
        gnupg \
        lsb-release
    ```
3. **Add Docker’s official GPG key:**
   ```bash
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/     docker-archive-keyring.gpg
   ```
4. **Set up the repository:**
   ```bash
   echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   ```
5. **Install Docker Engine:**
   ```bash
   sudo apt-get update
   sudo apt-get install -y docker-ce docker-ce-cli containerd.io
   ```
6. **Verify installation:**
   ```bash
   docker --version
   ```

### Steps for MacOSX
1.	**Download Docker Desktop from the [official website](https://www.docker.com/products/docker-desktop/).**
2.	**Follow the installation wizard and sign in with a Docker Hub account.**
3.	**Verify the installation:**
   ```bash
   docker --version
   ```
   
## Installing Minikube on Unix-like Systems
### Prerequisites
- Virtualization support (e.g., VirtualBox, KVM, Docker)
### Steps
1.	**Download Minikube:**
    ```bash
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    ```
2. **Install Minikube:**
   ```bash
   sudo install minikube-linux-amd64 /usr/local/bin/minikube
   ```
3. **Verify installation:**
    ```bash
    minikube --version
    ```

## Installing WSL on Windows
### Steps
1.	**Enable WSL:**
    - Open PowerShell as Administrator and run:
        ```powershell
        wls --install
        ```
    - This installs WSL 2 and a default Linux distribution (e.g., Ubuntu).
2. **Verify WSL version:**
    ```powershell
    wsl --list --verbose
    ```
3. **Set WSL 2 as the default version:**
   ```powershell
   wsl --set-default-version 2
   ```
4.	**Install your preferred Linux distribution:**
      - Search for “Linux” in the Microsoft Store and install a distribution like Ubuntu.
  
## Installing Docker and Minikube in WSL
### Prerequisites
   - WSL 2 enabled and a Linux distribution installed (e.g., Ubuntu)
