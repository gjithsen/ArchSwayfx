# Arch SwayFX Rice

A personal **Arch Linux SwayFX rice** with my preferred configs, themes, and setup scripts.

![preview](preview.png)

## Requirements

* **Fresh Arch Linux install**
* A **non-root user** added to the **wheel group**
* Internet connection

If you haven't created the user yet:

```bash
useradd -m -G wheel -s /bin/bash username
passwd username
EDITOR=nano visudo
```

Uncomment:

```
%wheel ALL=(ALL:ALL) ALL
```

Then log in with your new user.

---

## Installation

Clone the repository and run the install script:

```bash
git clone https://github.com/gjithsen/archswayfx.git
cd archswayfx
chmod +x install.sh
./install.sh
```

The script will install required packages and apply the configuration automatically.

---

## Notes

* This setup assumes **a clean Arch environment**.
* Existing configs may be overwritten.
* Review the `install.sh` script if you want to customize the installation.

---

## Repository

GitHub: https://github.com/gjithsen/archswayfx
