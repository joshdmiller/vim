# Josh David Miller's Vim Configuration

## Installation

Make sure you clone this repository with the `--recursive` flag, or you will have to update the
submodules manually.

Once you have the repository on your local machine, you will need to create symbolic links from the
path of the repo to your home folder. E.g.:

```
$ ln -s /path/to/repo/vim $HOME/.vim
$ ln -s /path/to/repo/vimrc $HOME/.vimrc
```

This is necessary to get this working. If you have an existing vim configuration, you will need to
remove or rename it. I use a plugin system to manage the many varied vim plugins I use regularly. To
install those plugins, you'll need to run the following command:

```
$ vim +PlugInstall +qall
```

This will give an error when you run it due to the missing theme, but you can press any key to get
past the error and then the install will proceed as normal. Just ignore the error.

## Dependencies

Obviously, you need a fairly recent version of Vim. I use 8.0, but slightly older versions may work
too. But some of the plugins require additional packages to be installed on your system. These
include.

I use the Adobe Source Code Pro font, so you'll want to install that too, or else change the font
name in `vim/lib/environment.vim`.

## Happy Vimming!

