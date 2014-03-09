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

" General Utilities
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
" Plug 'kien/ctrlp.vim'
Plug 'Shougo/unite.vim'
" Plug 'joshdmiller/ultisnips'
" Plug 'joshdmiller/vim-snippets'
Plug 'c9s/bufexplorer'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'chrisbra/NrrwRgn', { 'on': [ 'NR', 'NarrowRegion', 'NarrowWindow', 'NRV' ] }
Plug 'vim-scripts/qfn'
Plug 'mileszs/ack.vim'
Plug 'sjl/gundo.vim'

" Git Helpers
Plug 'tpope/vim-fugitive'
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

" Color Schemes
Plug 'tpope/vim-vividchalk'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'

" Language plugins
Plug 'neo4j-contrib/cypher-vim-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'rosstimson/scala-vim-support'
Plug 'groenewege/vim-less'
Plug 'joshdmiller/vim-markdown'
" Plug 'plasticboy/vim-markdown'
Plug 'mintplant/vim-literate-coffeescript'
Plug 'tpope/vim-jdaddy'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'elzr/vim-json'

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

