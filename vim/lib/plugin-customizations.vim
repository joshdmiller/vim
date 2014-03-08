" # Plugin Customizations
"
" ## Goya
" This function will be executed every time Goya is activated.
function! g:goyo_before()
  if has( 'gui_running' )
    set linespace=5
  elseif exists( '$TMUX' )
    silent !tmux set status off
  endif

  SignifyToggle
endfunction

" This function will be executed every time Goya is deactivated.
function! g:goyo_after()
  if has( 'gui_running' )
    set linespace=0
  elseif exists( '$TMUX' )
    silent !tmux set status on
  endif

  SignifyToggle
endfunction

" Tell Goya to run those callbacks.
let g:goyo_callbacks = [function('g:goyo_before'), function('g:goyo_after')]

" Overwrite some Goya defaults
let g:goya_width = 100

" Activate Goya with \<Space>
nnoremap <Leader><Space> :Goyo<CR>

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
let g:UltiSnipsListSnippets = '<c-m>'

" ## Other Plugins' Configuration
"
" For the CtrlP plugin, I want to ignore any files matching these patterns:
set wildignore+=*/tmp/*,*.so,*.sw*,*.zip,*.tar.*,*.tar,.git/*,*/node_modules/*,*/vendor/*,*/build/*,*/bin/*

" Automatically populate the g:airline_symbols dictionary with the powerline symbols.
let g:airline_powerline_fonts = 1

" Enable indent guides by default.
let g:indent_guides_enable_on_vim_startup = 1

" ### Web Development
"
" Use two space indentation for emmet/zencoding
let g:user_emmet_settings = {
      \  'indentation' : '  ',
      \}

" This is the set of libraries for which I want syntax support when using the
" `othree/javascript-libraries-syntax` plugin.
let g:used_javascript_libs = 'angularjs,angularui,jasmine'

" ### Authoring
"
" In markdown files, keep the top-level folds open when first opened.
let g:vim_markdown_initial_foldlevel=1

