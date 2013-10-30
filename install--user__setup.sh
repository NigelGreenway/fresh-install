## Setup My User area

set -e

cd ~

mkdir -p Sites/php
mkdir Sites/ruby
mkdir Sites/ruby/jekyll\ sites
mkdir Sites/python
mkdir Sites/node

mkdir Documents/Projects
mkdir Documents/Plugins

git clone git@github.com:smilinmonki666/dotfiles.git .dotfiles
./dotfiles/install.sh

cd ~/Sites/ruby/jekyll\ Sites\
git clone git@github.com:smilinmonki666/futurepixels.co.uk
cd ~