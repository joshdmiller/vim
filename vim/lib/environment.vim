" # Configure Basic Editor Options

" I like to have a darker color scheme when running GVim. Of the built-in schemes, I tend to like
" `vividchalk`, which is one of the plugins loaded by Pathogen. I also like `moria` and
" `Tomorrow-Night-Bright`, which are included as well.
colorscheme base16-chalk

" The majority of the time I run Vim, there is something with a defined syntax, from this very file
" to Go source code to CoffeeScript files to stylesheets. The following option enables syntax
" highlighting that filetype plugins utilize.
syntax on

" No matter what I am editing, I like to see line numbers to the left.
set rnu

" As a matter of best practice, I try to keep all lines in files from exceeding 80 characters so
" there are no wrapping issues when viewed anywhere. The following command will create a vertical
" line at 80 characters. In most of my color themes, it will show as gray.
set colorcolumn=100
set textwidth=100

" I also want all search matches to be highlighted.
set hlsearch

" Tabs and extra whitespace are evil, so let's highlight them with some fun characters.
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" I want the status line that appears at the bottom of the screen to be visible by default, rather
" than only under certain conditions.
set laststatus=2

" I like to see the line on which the cursor sits to be highlighted so it is easier to locate.
set cursorline

" The `smartindent` option has Vim use intelligent rules to determine when and how much to indent.
" This is very handy when editing code or bulleted lists.
set smartindent

" As a general rule, I prefer spaces instead of tabs. The following options expand tab keypresses to
" four spaces. I also set tabs to present themselves as four spaces for those files that require
" tabs (like a Makefile).
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" There some Vi compatibilities that I don't like, so I get rid of them.
set nocompatible

" I very much like the `Clean`, `Terminus`, and `Source Code Pro` fonts. This sets one as the
" default when using GVim.
set guifont=Source\ Code\ Pro\ for\ Powerline\ Semi-Bold\ 9

" I prefer not to keep file history in the menus of GVim.
let g:bmenu_max_pathlen=0

" This tells Vim to automatically change the global current working directory to the directory of
" the file currently being edited.
set autochdir

" Further, when working with source code, we ask Vim to support OmniCompletion, which uses smarter
" algorithms to look at the text prior to the cursor to try to guess what you want to type next.
" set ofu=syntaxcomplete#Complete

" For the completion menu, we want on invocation for Vim to insert the longest sequence of letters
" common to all completions, just like in an IDE like Eclipse or NetBeans. Further, we want the menu
" to show even if there was only a single match.
" set completeopt=longest,menuone

" Now we want Vim to behave like other editors with regard to open files; by setting this option,
" Vim allows us to have edited buffers "hidden" behind the current one.
set hidden

" Vim usually sets up its handling of keys like `Ctrl-Left` and `Ctrl-Right`, but when `$TERM` is
" set to anything starting with `screen`, it skips this process. To account for my custom `urxvt`
" and `tmux` configurations, I set up this handling myself.
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

