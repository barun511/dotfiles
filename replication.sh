echo ".dotfiles" >> .gitignore
git clone --bare git@github.com:barun511/dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
# Install oh my zsh in case it wasn't already
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install p10k, you may need the font from https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
# May fail if we have conflicts.
# May put your .zshrc into a weird position, as this dotfile was made on a mac.
config checkout
