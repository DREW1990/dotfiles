# Works on both Mac and GNU/Linux.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# This detection only works for mac and linux.
# Setup .bash_profile
if [ "$(uname)" == "Darwin" ]; then
  echo "Setting up $HOME/.bashrc"
  echo "source $DIR/_bash_profile" >> $HOME/.bash_profile
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Setting up $HOME/.bash_profile"
  echo "source $DIR/_bash_profile" >> $HOME/.bashrc
fi

# Setup .vimrc
echo "Overwriting $HOME/.vim"
echo "source $DIR/_vimrc" > $HOME/.vimrc
mkdir -p $HOME/.vim/colors $HOME/.vim/autoload
cp $DIR/vim_colorschemes/onedark.vim $HOME/.vim/colors
cp $DIR/vim_colorschemes/autoload/onedark.vim $HOME/.vim/autoload
