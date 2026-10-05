VMware Installer

Automated VMware Workstation installer for Linux.

The installer automatically detects your Linux distribution, installs the required dependencies, downloads the VMware .bundle installer, and starts the installation.
Supported Linux

    Ubuntu

    Debian

    Linux Mint

    Pop!_OS

    Fedora

    RHEL

    CentOS

    Rocky Linux

    AlmaLinux

    Arch Linux

    Manjaro

    EndeavourOS

Installation
Step 1 — Clone the repository

Open Terminal and run:

git clone https://github.com/nvnnaveen48/vmlnx.git

Step 2 — Enter the directory

cd vmlnx

Step 3 — Make the installer executable

chmod +x install.sh

Step 4 — Run the installer

./install.sh

The script will automatically:

    Detect your Linux distribution.

    Select the appropriate package manager.

    Install required dependencies.

    Download the VMware .bundle installer.

    Make the installer executable.

    Start VMware installation.

    Remove the temporary installer after installation.

One-Command Installation

You can also run everything with one command:

git clone https://github.com/nvnnaveen48/vmlnx.git && cd vmlnx && chmod +x install.sh && ./install.sh

How It Works

User
 │
 ├── git clone
 │
 ▼
NVN Repository
 │
 ├── install.sh
 │
 ▼
Detect Linux Distribution
 │
 ├── Ubuntu/Debian → apt
 ├── Fedora/RHEL   → dnf
 └── Arch/Manjaro  → pacman
 │
 ▼
Install Dependencies
 │
 ▼
Download VMware Bundle
 │
 ▼
Run VMware Installer
 │
 ▼
Installation Complete

Requirements

    64-bit Linux

    Internet connection

    sudo privileges

    A compatible VMware Workstation .bundle installer

Notes

The VMware installer is downloaded automatically by install.sh.

You do not need to manually download the VMware .bundle file.

Make sure the VMware download URL configured in install.sh points to a valid installer.
License

This repository contains an installation script. VMware Workstation is proprietary software and is subject to VMware/Broadcom's applicable license terms.
