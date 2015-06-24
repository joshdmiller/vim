" # Custom Key Mappings

" Rather than the traditional '\', I prefer my leader to be a little closer to the home row, so I
" change it to ','.
let mapleader=","

" Along the same lines, it is easier to type `;` than `:`, so why not usurp the semicolon for this
" purpose?
nnoremap ; :

" Disable the arrow keys and the home/end keys. Filthy habits die hard.
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap   <Home>   <NOP>
noremap   <End>    <NOP>
inoremap  <Esc>    <NOP>

" Here are a few keybindings I've included for convenience. 
nnoremap <leader>ww :w<CR>

" Also, I created a little shortcut to get back to normal mode without reaching for `<ESC>`.
inoremap jj <ESC>
inoremap jk <ESC>

" Should I make changes to my Vim configuration, it sucks to have to close out and reload, so here's
" a shortcut to reload my configuration.
nnoremap <Leader>rc :source $MYVIMRC<CR>

" To make navigating to the beginning and ends of lines easier, I like `H` and `L`.
nnoremap H ^
nnoremap L $

" I use regular expression seaching *constantly* in Vim, but its default way of handling it is
" insane. If you already know regexes from Python, Perl, JavaScript, or any other language, you can
" force Vim to behave the same way. I use the following keymappings to set that as the default.
nnoremap / /\v
vnoremap / /\v

" It can be bloody annoying to hit the `enter` key on a completion menu and have it not only not
" complete the selected entry, but kick me onto a new line. This changes the behavior of the `enter`
" key so that it will just activate the completion.
" inoremap <expr> <CR> pumvisible() ? '<C-y>' :'<C-g>u<CR>'

" `Ctrl-n` will continue to function as it should, but continuing to type will also narrow the
" selection, moving the highlighted entry to the next logical match.
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Open the omni completion menu, closing the previous one if open, and opening a new menu without
" changing the text:
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

" And a little shortcut for obtaining word count:
noremap <leader>wc :!wc -w %<CR>

" Break a line at the cursor.
inoremap <C-c> <CR><Esc>O

" I frequently need to reflow paragraphs of text, so I map `Q` to this as I never use the
" alternative.
nnoremap Q gqap

" And I like `<Space>` for folding/unfolding a single section.
" nnoremap <Space> za

" Speaking of folds, I often like to "isolate" the one I'm working on by ollapsing all others.
nnoremap zI zMzv

" After I perform a search, I often want the highlighting of results to go away. So I map `\hl` to
" toggle it.
nnoremap <Leader>hl :nohl<CR>

" After putting some text, I often want to "do things" to it; here's a quick binding to re-select
" it.
nnoremap <leader>v V`]

" To easier navigate through window splits, I like to cut out the extra character.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" To copy and paste within and without Vim, I map the usual `C-c` and `C-v`.
vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+gpa
cnoremap <C-v> <C-r>+

" Map my case changing function to a key.
vnoremap <C-u> ygv"=TwiddleCase(@")<CR>Pgv

" ## Web Development
"
" It is sometimes useful to fold an HTML tag and I don't have any folding expression in my
" configuration, so it's nice to map something simple like this:
nnoremap <Leader>ft Vatzf

