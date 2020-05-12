#!/bin/zsh

source ./script/common.sh

install_brew_app zsh zsh-completions

echo 'Updating shell to zsh'
chsh -s $(which zsh)

echo 'Installing Oh My Zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cat <<EOF >>~/.zshrc
### BEGIN dotfiles
if [ -d \$HOME/.dotfiles/rc.d ]; then
    for file in \$HOME/.dotfiles/rc.d/*.sh; do
        source \$file
    done
fi
### END dotfiles
EOF
