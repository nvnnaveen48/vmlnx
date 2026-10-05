#!/usr/bin/env bash

set -e

VMWARE_URL="https://downloads2.broadcom.com/?file=VMware-Workstation-Full-26H1u1-25688693.x86_64.bundle&oid=49172796&id=E2059qduWTckXNUUAisuKLA-q2JNnQ_m78SRgtSa7DAxuZnEtVb3A474OylPG-4WKlbn1T0=&verify=1791216653-mTQFFFfV6H4qD98FFgVK7jBZPU6GtFQ0WrocjI1jiPk="

INSTALLER="/tmp/vmware-installer.bundle"

echo "=== NVN VMware Installer ==="

source /etc/os-release

case "$ID" in
    ubuntu|debian|linuxmint|pop)
        sudo apt update
        sudo apt install -y curl gcc make perl build-essential
        ;;

    fedora)
        sudo dnf install -y curl gcc gcc-c++ make perl kernel-devel kernel-headers
        ;;

    arch|manjaro|endeavouros)
        sudo pacman -Sy --needed --noconfirm curl base-devel perl
        ;;

    *)
        echo "Unsupported Linux: $ID"
        exit 1
        ;;
esac

echo "[+] Downloading VMware..."
curl -fL --retry 3 "$VMWARE_URL" -o "$INSTALLER"

chmod +x "$INSTALLER"

echo "[+] Installing VMware..."
sudo "$INSTALLER"

rm -f "$INSTALLER"

echo
echo "VMware installation completed."
