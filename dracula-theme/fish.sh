# Install Dracual drak theme for fish shell
# Refere https://draculatheme.com/fish for more info

# \033[0;32m is for Green color output
# \033[0m is for no color

printf "\033[0;32m \n\n\n===> Installing Dracula fish theme...\n \033[0m"

# if repo alredy exist then delete it before cloning 
if [ -d "./fish" ] 
then
    rm -rf ./fish
fi

git clone https://github.com/dracula/fish.git
cp ./fish/conf.d/dracula.fish ~/.config/fish/conf.d/
rm -rf fish
