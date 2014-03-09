" # Plugin Customizations
"
" ## Unite
"
" Though I use Unite, I like to make it work a little more like ctrlp.
let g:unite_enable_start_insert = 1
let g:unite_winheight = 20
let g:unite_split_rule = 'botright'

" And just for kicks, how about a more interesting prompt than `> `?
let g:unite_prompt = '» '

" Importantly, I use Unite to open new files by pattern and, since I'm used to CtrlP (and that I use
" Mod4+p in Xmonad), I map it the same.
nnoremap <C-p> :Unite -buffer-name=search buffer file_rec:!<CR>

" ## Goya
" This function will be executed every time Goya is activated.
function! g:goyo_before()
  if has( 'gui_running' )
    set linespace=5
  elseif exists( '$TMUX' )
    silent !tmux set status off
  endif

  GitGutterDisable
endfunction

" This function will be executed every time Goya is deactivated.
function! g:goyo_after()
  if has( 'gui_running' )
    set linespace=0
  elseif exists( '$TMUX' )
    silent !tmux set status on
  endif

  GitGutterEnable
endfunction

" Tell Goya to run those callbacks.
let g:goyo_callbacks = [function('g:goyo_before'), function('g:goyo_after')]

" Overwrite some Goya defaults
let g:goyo_width = 105
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2

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

" Also for airline, show the buffers in a list of there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" Enable indent guides by default.
let g:indent_guides_enable_on_vim_startup = 1

" Ack is awesome. Nuff said.
nnoremap <Leader>a :Ack

" Toggle the Gungo window to show/hide a branching tree of undo history.
nnoremap <Leader>gu

" ### Web Development
"
" Now I map a keybinding for CoffeeScript files to run the `coffeelint` command on the current file
" on `\cl` and `:CoffeeMake` on the current file on `\cc`.
map <leader>cl :CoffeeLint! <CR>| cwindow
map <leader>cc :CoffeeMake --bare <CR>| cwindow

" Use two space indentation for emmet/zencoding
let g:user_emmet_settings = {
      \  'indentation' : '  ',
      \}

" This is the set of libraries for which I want syntax support when using the
" `othree/javascript-libraries-syntax` plugin.
let g:used_javascript_libs = 'angularjs,angularui,jasmine'

