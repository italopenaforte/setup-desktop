sudo apt install zsh

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

echo "" >>~/.zshrc
echo "zinit light zdharma/fast-syntax-highlighting" >>~/.zshrc
echo "zinit light zsh-users/zsh-autosuggestions" >>~/.zshrc
echo "zinit light zsh-users/zsh-completions" >>~/.zshrc
