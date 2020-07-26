" # Plugin Customizations
"
" ## CtrlP

" Importantly, I use CtrlP to open new files by pattern (and I use Mod4+p in Xmonad), so I map it
" similarly.
nnoremap <C-p> :CtrlP<CR>

" For the CtrlP plugin, I want to ignore any files matching these patterns:
set wildignore+=*/tmp/*,*.so,*.sw*,*.zip,*.tar.*,*.tar,.git/*,*/node_modules/*,*/vendor/*,*/build/*

" ## Goya
" This function will be executed every time Goya is activated.
function! g:Goyo_before()
  if has( 'gui_running' )
    set linespace=5
  elseif exists( '$TMUX' )
    silent !tmux set status off
  endif

  GitGutterDisable
endfunction

" This function will be executed every time Goya is deactivated.
function! g:Goyo_after()
  if has( 'gui_running' )
    set linespace=0
  elseif exists( '$TMUX' )
    silent !tmux set status on
  endif

  GitGutterEnable
endfunction

" Tell Goya to run those callbacks.
let g:goyo_callbacks = [function('g:Goyo_before'), function('g:Goyo_after')]

" Overwrite some Goya defaults
let g:goyo_width = 105
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2

" Activate Goya with \<Space>
nnoremap <Leader><Space> :Goyo<CR>

" Activate Limelight when we enter Goyo.
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!

" ## NERDTree Configuration
"
" One of the plugins I use is [NERDTree](https://github.com/scrooloose/nerdtree), a file tree
" explorer. If I launch Vim without specifying any file, I want it to open NERDTree.
"
" Also, I do not need all files to appear, so I tell NERDTree to ignore certain types of files.
"autocmd GuiEnter * if !argc() | edit `pwd` | endif
let NERDTreeIgnore=[ '\.o$', '\.swp$', '\~$', '\.class$' ]

" ## UltiSnips Configuration
"
" This is just some basic setup for the UltiSnips plugin.
let g:UltiSnipsEditSplit = 'vertical'


" YouCompleteMe defaults to using the TAB key, which conflicts with UltiSnips.  Due to recent
" integration efforts, the best approach is to remap the UltiSnips command key:
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsListSnippets = '<c-tab>'

" ## Other Plugins' Configuration

" Automatically populate the g:airline_symbols dictionary with the powerline symbols.
let g:airline_powerline_fonts = 1

" Also for airline, show the buffers in a list of there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" Enable indent guides by default.
let g:indent_guides_enable_on_vim_startup = 1

" Ack is awesome. Nuff said.
nnoremap <Leader>a :Ack

" Toggle the Undotree window to show/hide a branching tree of undo history.
nnoremap <Leader>ut :UndotreeToggle<CR>

" ### Web Development
"
" Use two space indentation for emmet/zencoding
let g:user_emmet_settings = {
      \  'indentation' : '  ',
      \}

" Support JSX in .js files too.
let g:jsx_ext_required = 0

" Lexical Configuration
let g:lexical#thesaurus = [ '/usr/share/thesaurus/moby-thesaurus.txt' ]
let g:lexical#spelllang = ['en_us', 'en_gb']

