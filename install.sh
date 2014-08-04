function install_xcode() {
    read -r -p "Have you installed Xcode from the app store? [y/N] " response
    case $response in
        [yY] )
                xcode-select --install
                ;;
        *)
                return
                ;;
    esac
}

function install_homebrew() {
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
}

function install_brews() {
    brew tap caskroom/homebrew-cask
    brew tap caskroom/versions

    brews=( gnutls cmake git trash terminal-notifier\
            coreutils irssi task ctags node mysql\
            tree tmux wget zsh-syntax-highlighting brew-cask )

    for item in "${brews[@]}"
    do
        brew install $item
    done
}

function install_casks() {
    casks=( vagrant virtualbox colors sequel-pro sublime-text3\
            dropbox firefox opera google-chrome appcleaner\
            clamxav timemachineeditor cord handbrake admium\
            bettertouchtool )

    for item in "${casks[@]}"
    do
        brew cask install $item
    done
}

function install_vagrant_extras() {
    vagrant plugin install vagrant-vbguest
    sudo easy_install pip
    sudo pip install ansible --quiet
    sudo pip install markupsafe
}

function install_composer() {
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
}

function setup_mysql() {
    mkdir -p ~/Library/LaunchAgents
    ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
    launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
}

function install_pear() {
    wget http://pear.php.net/go-pear.phar
    php go-pear.phar
    rm go-pear.phar
    sudo pecl channel-update pecl.php.net
}

function install_ruby_gems() {
    gems=( sass jekyll teamocil cheat )

    for item in "${gems[@]}"
    do
        sudo gem install $item
    done
}

function install_node_packages() {
    package=( vtop )

    for item in "${packages[@]}"
    do
        npm install $item
    done
}

install_xcode && \
install_homebrew && \
install_brews && \
install_casks && \
install_vagrant_extras && \
install_composer && \
install_pear && \
install_ruby_gems && \
install_node_packages && \
setup_mysql
