# shit
#
#
#
# python shit
#

# donwloading python3.11 (Full)
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.11-full

# donwloading poetry
curl -sSL https://install.python-poetry.org | python3.11 -

# Adding completions for oh my zshell
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry

