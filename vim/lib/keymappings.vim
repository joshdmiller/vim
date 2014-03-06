" # Custom Key Mappings

" Rather than the traditional '\', I prefer my leader to be a little closer to the home row, so I
" change it to ','.
let mapleader=","

" Along the same lines, it is easier to type `;` than `:`, so why not usurp the semicolon for this
" purpose?
nnoremap ; :

" Disable the arrow keys and the home/end keys. Filthy habits die hard.
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap   <Home>   <NOP>
noremap   <End>    <NOP>

" Here are a few keybindings I've included for convenience. 
nnoremap <leader>ww :w<CR>

" Also, I created a little shortcut to get back to normal mode without reaching for `<ESC>`.
imap jj <ESC>

" For the LessCSS plugin, I have a convenience keybinding to run the lessc command and to pipe the
" contents to the file with the same name but with the extension `css` rather than `less`. Also, I
" use the [RECESS](http://twitter.github.com/recess/) linter made by
" [Twitter](http://twitter.github.com) for CSS and LESS to ensure proper styles.
nnoremap <leader>lc :w <BAR> !lessc % > %:t:r.css<CR><space> | cwindow
nnoremap <leader>ll :w <BAR> !recess <CR> | cwindow

" It can be bloody annoying to hit the `enter` key on a completion menu and have it not only not
" complete the selected entry, but kick me onto a new line. This changes the behavior of the `enter`
" key so that it will just activate the completion.
inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<C-g>u<CR>"

" `Ctrl-n` will continue to function as it should, but continuing to type will also narrow the
" selection, moving the highlighted entry to the next logical match.
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Open the omni completion menu, closing the previous one if open, and opening a new menu without
" changing the text:
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

" Open the user completion menu, closing the previous one if open, and opening a new menu without
" changing the text.
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

" Now I map a keybinding for CoffeeScript files to run the `coffeelint` command on the current file
" on `\cl` and `:CoffeeMake` on the current file on `\cc`.
map <leader>cl :CoffeeLint! <CR>| cwindow
map <leader>cc :CoffeeMake --bare <CR>| cwindow

" And a little shortcut for obtaining word count:
map <leader>wc :!wc -w %<CR>

