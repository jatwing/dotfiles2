mkdir -p ~/.config/awesome
ln -sf $(dirname $(realpath $0))/rc.lua ~/.config/awesome/rc.lua

[ -L ~/.config/awesome/modules ] && unlink ~/.config/awesome/modules
ln -s $(dirname $(realpath $0))/modules ~/.config/awesome/modules
