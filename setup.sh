function clone_dotfiles() {
    git clone https://github.com/smilinmonki666/dotfiles.git $HOME/Documents/Projects/Dotfiles
}

function create_symlinks() {
    docfiles="$HOME/Documents/Projects/Dotfiles"

    for file in $(find $docfiles -not -iwholename '*git/*' -type f)
    do
        ln -s $file $HOME/$(basename $file)
    done

    ln -s /opt/homebrew-cask/Caskroom/sublime-text3/Build\ 3059/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
}

function replace_sublime_user_directory() {
    sublimeDirectory="$HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User"

    echo "import urllib.request,os,hashlib; h = '2915d1851351e5ee549c20394736b442' + '8bc59f460fa1548d1514676163dafc88'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)" | pbcopy
    echo "Submlime will open. Please press 'ctrl+\`' to open the sublime console and paste the current clipboard & press enter to run. Then close sublime & return to this screen/window"
    subl
    echo "Press enter key to continue..."
    read
    rm -rf $sublimeDirectory
    git clone https://github.com/smilinmonki666/sublime-user.git $sublimeDirectory
    echo "Sublime Text will now open, leave it open as it will be installing all of the packages!"
    subl
}

clone_dotfiles && \
create_symlinks && \
replace_sublime_user_directory

chsh -s /bin/zsh
