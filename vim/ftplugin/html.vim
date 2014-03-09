" Vim indenting will, upon the return key, re-indent the current line. In HTML, this causes all
" sorts of annoying little problems, so I disable it.
" Source: http://www.morearty.com/blog/2013/01/22/fixing-vims-indenting-of-html-files/
setlocal indentkeys-=*<Return>

" Though I try to keep my HTML under 100 lines wide, having it auto-wrap is kind of annoying. I
" prefer to wrap manually so I can choose proper breakpoints. In addition, it will wrap in the
" middle of attribute values, which can mess some things up when the values are processed in
" JavaScript.
setlocal nowrap

