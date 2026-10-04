#!/bin/bash

echo "Memasang komponen t
ema..."
pkg update -y && pkg install figlet lolcat neofetch -y

# Backup file .bashrc lama jika ada
if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.bak
fi

# Tulis tampilan baru ke ~/.bashrc
cat << 'EOF' > ~/.bashrc
clear
echo "==========================================" | lolcat
figlet -f standard "Joni" | lolcat
echo "==========================================" | lolcat
echo "    Selamat Datang di Terminal Saya!     " | lolcat
echo "==========================================" | lolcat
echo ""
neofetch
echo ""
EOF

echo "Tema berhasil dipasang! Buka ulang Termux atau ketik: source ~/.bashrc"
