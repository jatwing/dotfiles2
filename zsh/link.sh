ln -sf $(dirname $(realpath $0))/.zshrc ~/.zshrc
mkdir -p ~/bin
ln -sf $(dirname $(realpath $0))/bin/* ~/bin
