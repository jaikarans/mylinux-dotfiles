# Install dracula theme for vim 
# Referece https://www.skillsugar.com/how-to-install-dracula-theme-in-vim
# This is for vim 8.2 and above

printf "\33[0;32m ===> Installing dracula theme in vim \n \33[0m"

mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start

git clone https://github.com/dracula/vim.git dracula

echo -e "\" theme - dracula\npackadd! dracula\ncolorscheme dracula" >> ~/.vimrc
