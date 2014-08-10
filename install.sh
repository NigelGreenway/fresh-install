function install_xcode() {
    read -r -p "Have you installed Xcode from the app store? [y/N] " response
    case $response in
        [yY] )
            echo "setting up Xcode..."
            sudo xcode-select --install
            clear
            echo "Open Xcode and agree to the terms..."
            echo "Press ENTER to continue:   "
            read
            ;;
        *)
            return
            ;;
    esac
}

function install_homebrew() {
    echo "Downloading homebrew & installing..."
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    clear
}

function install_brews() {
    echo "Installing brews..."

    brew tap caskroom/homebrew-cask
    brew tap caskroom/versions

    brews=( gnutls cmake git trash terminal-notifier\
            coreutils irssi task ctags node mysql\
            tree tmux wget zsh-syntax-highlighting brew-cask
            libpng mcrypt libjpg autoconf )

    for item in "${brews[@]}"
    do
        brew install $item
    done
    clear
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
    echo "Installing Vagrant..."
    vagrant plugin install vagrant-vbguest
    sudo easy_install pip
    sudo pip install ansible --quiet
    sudo pip install markupsafe
    clear
}

function install_composer() {
    echo "Installing Composer..."
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
    clear
}

function setup_mysql() {
    echo "Setting up MySQL";
    mkdir -p ~/Library/LaunchAgents
    ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
    launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
    clear
}

function install_pear() {
    echo "Installing PEAR..."
    wget http://pear.php.net/go-pear.phar
    php go-pear.phar
    rm go-pear.phar
    sudo pecl channel-update pecl.php.net
    clear
}

function install_ruby_gems() {
    echo "Installing Ruby gems..."
    gems=( sass jekyll teamocil cheat )

    for item in "${gems[@]}"
    do
        sudo gem install $item
    done
    clear
}

function install_node_packages() {
    echo "Installing node packages..."
    package=( vtop bower grunt-cli )

    for item in "${packages[@]}"
    do
        npm install -g $item
    done
    clear
}

function install_php_extras() {
    echo "Installing PHP extras..."
    # Install & setup virtphp
    https://github.com/virtphp/virtphp/releases/download/v0.5.0-alpha/virtphp.phar
    mv virtphp.phar /usr/local/bin/virtphp
    sudo chown 0755/usr/local/bin/virtphp
    # Install & setup phpenv
    git clone https://github.com/CHH/phpenv.git
    ./phpenv/bin/phpenv-install.sh
    git clone https://github.com/CHH/php-build.git
    sudo ./php-build/install.sh
    sudo php-build --definitions
    clear
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
install_php_extras && \
setup_mysql

echo "Install complete!"
