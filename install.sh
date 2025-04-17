#!/bin/bash

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
BACKUP_DIR="$HOME/.config/nvim-backup-$TIMESTAMP"

install() {
	mkdir -p "$BACKUP_DIR"
	mv "$CONFIG_DIR"/* "$BACKUP_DIR/" 2>/dev/null

	rsync -av \
  		--exclude="install.sh" \
  		--exclude=".git" \
  		--exclude=".DS_Store" \
  		./ "$CONFIG_DIR/"	
}

printf "\e[32m==================== NOVERNVIM ====================\e[0m\n"
printf "                   [by \e[36mpik6c\e[0m]                  \n"
printf "\n"
printf "   This script will completely override your       \n"
printf "           nvim configuration.                    \n"
printf "\n"
printf "   But your existing settings will be \e[1mbacked up\e[0m    \n"
printf "\n"
printf "        \e[32mcontinue?(c)\e[0m  or  \e[31mexit?(e)\e[0m               \n"
printf "\n"
printf "\e[32m===================================================\e[0m\n"

read -n 1 -r answer
echo

if [[ $answer = "c" ]]; then
	if ! command -v nvim &> /dev/null; then
		printf "\e[33mWarning:\e[0m Neovim is not installed. Please install it first.\n"
	fi

	printf "\e[32mInstalling novernvim on your system...\e[0m\n"
	install >/dev/null
	printf "\e[32;1mSuccess!\e[0m\n"
	printf "Novernvim has been successfully installed!\n"
	printf "Try running Neovim — it's ready to go!\n"
	exit 0
else
	printf "\e[31mSee you!\e[0m\n"
	exit 1
fi

