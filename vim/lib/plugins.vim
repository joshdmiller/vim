" # Load Plugins

" Adding and deleting Vim scripts can be tough to manage. If you code in, say, C, you have files for
" syntax, a filetype detection, plugin features, and more - and all of these files are stored in
" separate directories along with like files from all of your other plugins. If you want to remove a
" plugin, you must search all of these directories and delete them manually. What a mess.

" Load the VIM-Plug package manager.
runtime plug/plug.vim

" Start the plugin process.
call plug#begin( '~/.vim/plugged' )

" Libraries
Plug 'MarcWeber/vim-addon-mw-utils'

" Plugins that Make Vim Smarter
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-sensible'
Plug 'kana/vim-smartinput'
Plug 'tpope/vim-surround'
Plug 'Lokaltog/vim-easymotion'
Plug 'Shougo/neocomplete.vim'

" General Utilities
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'Shougo/unite.vim'
Plug 'joshdmiller/ultisnips'
Plug 'joshdmiller/vim-snippets'
Plug 'c9s/bufexplorer'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'chrisbra/NrrwRgn'
Plug 'vim-scripts/qfn'
Plug 'mileszs/ack.vim'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-dispatch'

" Writing
Plug 'reedes/vim-textobj-sentence'
Plug 'reedes/vim-wordy'
Plug 'reedes/vim-wheel'
Plug 'reedes/vim-lexical'
Plug 'junegunn/limelight.vim'

" Git Helpers
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jaxbot/github-issues.vim'

" Color Schemes
Plug 'tpope/vim-vividchalk'
Plug 'flazz/vim-colorschemes'
Plug 'arcticicestudio/nord-vim'

" Language plugins
Plug 'neo4j-contrib/cypher-vim-syntax'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'joshdmiller/vim-markdown'
" Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-jdaddy'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'

" Programming Helpers
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-ragtag'
Plug 'skammer/vim-css-color'
Plug 'amiorin/vim-fenced-code-blocks'
Plug 'junegunn/vim-easy-align'
Plug 'othree/javascript-libraries-syntax.vim'

" Tools that have no business in Vim but are totally bitchin' nonetheless
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'

" Done loading plugins.
call plug#end()

