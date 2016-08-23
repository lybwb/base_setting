# roger_setting

# this part for my vimrc

# I user vim to write c, python....

# Usage

1.Make sure your ternimal is 256-color.
    # should be xterm-256color or screen-256color
    echo $TERM
    # if not, run the following commands:
    echo 'export TERM=xterm-256color' >> ~/.bashrc
    # or ~/.zshrc if you use zsh export TERM=xterm-256color

2.clone this repo to ~/.vim
    git clone https://github.com/r-lyb/base_setting.git ~/.tmpsetting

3. download vundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

4. create a soft link ~/.vimrc:
    ln -sf ~/.vim/.vimrc ~/
5. run vim, I know there would be some errors, just press any key to ignore that this time.
    vim, 运行:BundleInstall
        或者在命令行运行 vim +BundleInstall +qall

6. restart your vim and welcome to the new world!

After somedays you may run :BundleUpdate to update all the installed plugins.
    or :BundleClean to clean plugins



