#!/bin/sh
ln -sf ~/dotfiles/.vimrc.after ~/.vimrc.after
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
cp -r ~/dotfiles/.janus ~/
if grep "dotfiles/profile.d" ~/.profile > /dev/null 2>&1; then
  echo "Already installed"
else
cat <<EOF >> ~/.profile

for file in ~/dotfiles/profile.d/*.sh; do
  . \$file
done
EOF
fi
