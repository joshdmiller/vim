" # Load Plugins

" Adding and deleting Vim scripts can be tough to manage. If you code in, say, C, you have files for
" syntax, a filetype detection, plugin features, and more - and all of these files are stored in
" separate directories along with like files from all of your other plugins. If you want to remove a
" plugin, you must search all of these directories and delete them manually. What a mess.

" Load the VIM-Plug package manager.
runtime plug/plug.vim

" Start the plugin process.
call plug#begin( '~/.vim/plugged' )

" ####
" Plugins that Make Vim Smarter
" ####

" generic helpers
Plug 'MarcWeber/vim-addon-mw-utils'

" a nice 'home screen' for vim with no file opened
Plug 'mhinz/vim-startify'

" some basic defaults
Plug 'tpope/vim-sensible'

" auto-close brackets and so forth
Plug 'kana/vim-smartinput'

" wrap motions in brackets and so forth
Plug 'tpope/vim-surround'

" tap <Leader><Leader> and a motion to be prompted for the number
Plug 'Lokaltog/vim-easymotion'

" completion engine, requiring no tabs
" this requires _manual_ compilation after Plug installation!
Plug 'valloric/youcompleteme'

" ####
" General Utilities
" ####

" a file finder
Plug 'ctrlpvim/ctrlp.vim'

" snippets!
Plug 'sirver/ultisnips'

" a utility for switching between current buffers
Plug 'c9s/bufexplorer'

" sick status bar
Plug 'bling/vim-airline'

" a file tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" edit a region of a file in its own buffer, for focus
Plug 'chrisbra/NrrwRgn'

" Ack rules
Plug 'mileszs/ack.vim'

" view the undo history in a visual tree
Plug 'mbbill/undotree'

" ####
" Writing
" ####

" a 'focus mode' plugin for vim
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }

" dims all but the current paragraph; great with Goyo
Plug 'junegunn/limelight.vim'

" sentence motions
Plug 'reedes/vim-textobj-sentence'

" screen-anchored mouse wheel scrolling; moves the cursor with the mouse wheel while it scrolls
Plug 'reedes/vim-wheel'

" augmented spell-check
Plug 'reedes/vim-lexical'

" ####
" Git Helpers
" ####
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" ####
" Color Scheme
" ####
Plug 'arcticicestudio/nord-vim'

" ####
" Language plugins
" ####
Plug 'neo4j-contrib/cypher-vim-syntax'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-jdaddy'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'

" ####
" Programming Helpers
" ####
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-ragtag'
Plug 'skammer/vim-css-color'
Plug 'amiorin/vim-fenced-code-blocks'
Plug 'junegunn/vim-easy-align'
Plug 'othree/javascript-libraries-syntax.vim'

" Done loading plugins.
call plug#end()

