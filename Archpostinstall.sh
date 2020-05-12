#!/bin/bash

#Meu post-install do arch linux

#Primeiro, atualizar os repositórios e instalar atulizções se necessario.

echo"Verificando se à atualizações"
sudo pacman -Syu

#Instalando yay, AUR Helper.

echo"Instalando o yay"
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#instalando snapd.

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

echo"Reinicie o computador para que os snaps funcionem"

cd ~



#Output final
printf "Arch Linux, onde 30 minutos atrás é considerado estável\n"


