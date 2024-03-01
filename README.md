Arch linux install procedure:

1. iwctl (device list) (station wlan0 get networks) (station wlan0 connect network_name)
2. pacman -Sy
3. pacman -Sy archlinux-keyring
4. lsblk (show disk)
5. cfdisk /dev/nvme0n1
6. make 800 mb EFI system partition (lets refer to this partition as nvme0n1p5)
7. make linux filesystem (your main space) (lets refer to this partition as nvme0n1p6)
8. 8 gb linux swap partition (lets refer to this partition as nvme0n1p7)
9. write changes
10. mkfs.fat -F /dev/nvme0n1p5
11. mkfs.ext4 /dev/nvme0n1p6
12. mkswap /dev/nvme0n1p7
13. mount /dev/nvme0n1p6 /mnt
14. mkdir /mnt/boot
15. mount /dev/nvme0n1p5 /mnt/boot
16. swapon /dev/nvme0n1p7
17. lsblk
18. pacman -S archinstall
19. archinstall
20. disk configuration - pre-mounted disk configuration - /mnt
21. install!
