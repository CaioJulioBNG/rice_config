#!/bin/bash

# Menu de opções
menu="Desligar: shutdown | Reiniciar: reboot | Suspender: suspend"

# Usando o `wofi` para exibir o menu
chosen=$(echo -e "$menu" | wofi --dmenu --prompt "Power Menu:")

case $chosen in
    "Desligar: shutdown")
        systemctl poweroff
        ;;
    "Reiniciar: reboot")
        systemctl reboot
        ;;
    "Suspender: suspend")
        systemctl suspend
        ;;
    *)
        echo "Nenhuma ação selecionada"
        ;;
esac
