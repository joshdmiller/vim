" A custom fold expression
" Based on https://gist.github.com/sjl/1038710
setlocal foldexpr=GetMarkdownFold(v:lnum)
setlocal foldmethod=expr

function! GetMarkdownFold(lnum)
  let curr_line = getline(a:lnum)

  " If it's a blank line, set the fold level to "undefined". This will allow us to keep blank lines
  " when folding.
  if curr_line =~? '\v^\s*$'
    return '-1'
  endif

  if curr_line =~ '^#'
    return '>'.matchend(curr_line, '^#\+')
  elseif curr_line =~ '^==\+\s*'
    return '>1'
  elseif curr_line =~ '^--\+\s*'
    return '>2'
  else
    return '='
  endif
endfunction
 
" I want to always start by expanding any top-level folds in a markdown document.
setlocal foldlevelstart=1 foldlevel=1

" The fold column makes it easier to see the current level of indentation, but it can easily get out
" of hand. I like to allow only four column widths for display.
setlocal foldcolumn=4

" I like paragraphs to auto-format as I type, but it can be a little confusing for the
" auto-formatting to occur while simply moving lines about and such in normal mode. So I use an
" autogroup to enable auto-formatting when I enter insert mode and then disable it again when I
" leave insert mode.
augroup PROSE
  au!
  autocmd InsertEnter * set formatoptions+=a
  autocmd InsertLeave * set formatoptions-=a
augroup END

" It really sucks to lose work - and swap files laying around gets pretty annoying too. As such,
" when writing, I like to enable the `autowrite` feature which will automatically save the current
" buffer on *most* actions.
setlocal autowrite

" Of course, we want spell checking, too, and I write principally in American English.
setlocal spell spelllang=en_us

