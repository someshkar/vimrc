# Somesh Kar's Vim Config
Hey! I'm Somesh. I've been messing around with Vim recently, and found that I've come to love it for everything I do, whether it's editing code or just writing a few paragraphs for my English homework.

## Try on Boxware

To try out my Vim configuration inside your browser using Boxware, click this button -

[![Try on Boxware](https://cdn.boxware.io/try/button.svg)](https://boxware.io/dashboard?try=https://github.com/someshkar/vimrc)

## Setup

To save your old Vim configuration(if you have one) in case something goes wrong, run the following commands in your terminal -

```
mv ~/.vimrc ~/.vimrc.bak
mv ~/.vim ~/.vim.bak
```

To download and setup my Vim configuration on your machine, run these commands in your terminal -

```
git clone https://github.com/someshkar/vimrc.git
cd vimrc
cp .vimrc ~ && cp -r .vim ~
```

After that either source ~/.vimrc in your active Vim window, or just restart Vim. Then run the following command inside Vim to install all the plugins listed in my .vimrc file.

```
:PlugInstall
```

If you've got any changes you would like to make to my vim config or update it with stuff you like, feel free to submit a pull request via this repo.

## Credits

This Vim configuration is heavily inspired by Doug Black's [A Good Vimrc](https://dougblack.io/words/a-good-vimrc.html) and Mythias Bynen's [dotfiles](https://github.com/mathiasbynens/dotfiles).

