# This is a small cheatsheet how I install my ArchLinux (especially on VirtualBox for testing).
# The system has a swap and a default partition with no seperation of the home or boot partition.
# Not very well documented, ask if questions pop up.
# The keymap is german, timezone also and the language en_US.UTF-8
# I'll exit here in case someone calls this script
exit 1

# ~ BOOT ISO

loadkeys de

# Partition and format
cfdisk /dev/sda # interactive: sda1 (swap), sda2: (linux*bootable)
mkswap /dev/sda1
mkfs.ext4 /dev/sda2

# Mount and install
mount /dev/sda2 /mnt
swapon /dev/sda1
pacstrap /mnt base base-devel

# Access new system
arch-chroot /mnt
passwd

# Add new user
useradd -m -g users -s /bin/bash maxi
passwd maxi
nano /etc/sudoers
# #%wheel ALL=(ALL) ALL >>>>> uncomment this line
gpasswd -a maxi wheel # add to group

# Better terminal font
pacman -S terminus-font
setfont ter-v16n # temporary
echo KEYMAP=de-latin1-nodeadkeys > /etc/vconsole.conf # permanent
echo FONT=ter-v16n >> /etc/vconsole.conf # permanent

# Locales
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "en_us.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
rm -f /etc/localtime
ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

# Hostname
echo archlinux > /etc/hostname

# Bootloader
pacman -S grub-bios
grub-install /dev/sda
mkinitcpio -p linux
grub-mkconfig -o /boot/grub/grub.cfg

# Back to boot media
exit

# Generate the fstab file
genfstab /mnt >> /mnt/etc/fstab

# Unmount the hard drive and reboot from it
umount /mnt
reboot

# ~ NEW SYSTEM

# Enable dhcp
sudo systemctl enable dhcpcd
sudo systemctl start dhcpcd

# Software
sudo pacman -Syu
sudo pacman -S git

# Install dotfiles
git clone https://github.com/probandula/arch-dotfiles dotfiles
# Install software from dotfiles (./dotfiles -s)
# Install wallpapers from dotfiles (./dotfiles -w)

# Driver installation (https://wiki.archlinux.org/index.php/xorg)
# On VirtualBox
sudo pacman -S virtualbox-guest-utils
sudo pacman -S libxcomposite # TODO don't know if i really need this, test: reboot before that

reboot

startx

# ~ XTERM

sudo localectl set-x11-keymap de pc105 nodeadkeys
localectl # check
