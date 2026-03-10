# Arch SwayFX Rice

A personal **Arch Linux SwayFX rice** with my preferred configs, themes, and setup scripts.

![Project Screenshot](Wallpapers/riceshowcase3.jpg)
![Project Screenshot](Wallpapers/riceshowcase1.jpg)
![Project Screenshot](Wallpapers/riceshowcase2.jpg)

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

Uncomment the following line in `visudo`:

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

The script installs required packages and applies the configuration automatically.

---

## Dynamic Theming (Pywal)

This rice uses **pywal**, so the entire color scheme is **dynamic** and generated from your wallpaper.

To change the wallpaper and regenerate the colors, run:

```bash
wal -i /path/to/your/wallpaper
```

Example:

```bash
wal -i ~/Pictures/wallpapers/wall.jpg
```

All supported applications will automatically update their colors based on the wallpaper.

---

## Notes

* This setup assumes **a clean Arch environment**
* Existing configs may be **overwritten**
* You can review or modify the `install.sh` script if you want to customize the installation
* If you don't have a keen knowleadge on linux wtf are you doing using Arch and this ain't for you. Maybe start with Mint or something.

---

## Repository

https://github.com/gjithsen/archswayfx
