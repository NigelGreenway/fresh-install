## Setup My User area

set -e

cd ~

mkdir -p .git_template/hooks

mkdir -p Sites/php
mkdir -p Sites/ruby
mkdir -p Sites/ruby/jekyll\ sites
mkdir -p Sites/python
mkdir -p Sites/node

mkdir -p Documents/Projects
mkdir -p Documents/Projects/php
mkdir -p Documents/Projects/ruby
mkdir -p Documents/Projects/python
mkdir -p Documents/Projects/node

mkdir -p Documents/Plugins

mkdir -p Documents/Sublime\ Text\ Projects/php
mkdir -p Documents/Sublime\ Text\ Projects/ruby
mkdir -p Documents/Sublime\ Text\ Projects/python
mkdir -p Documents/Sublime\ Text\ Projects/node

git clone https://github.com/smilinmonki666/dotfiles.git ~/.dotfiles

rm ~/.bash_profile
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

cd ~

cd ~/Sites/ruby/jekyll\ sites
git clone https://github.com/smilinmonki666/futurepixels.co.uk
cd $CURDIR
