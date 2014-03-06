" # Introduction
"
" The `$HOME/.vimrc` file is the primary user-specific configuration file for the
" [Vim](http://www.vim.org/) advanced text editor. Vim is by far my favorite text editor. When I
" program, I use Vim. When I edit configuration files, I use Vim. When I blog, I use Vim. Even when
" I browse the web, I use Vim (actually I use [Vimperator](http://www.vimperator.org), a Firefox
" plugin that adds command mode and Vim-like keybindings).
"
" This file is the entry point to my entire Vim configuration, including both the console-based Vim
" and the graphical GVim. Each option is discussed as it is set.

" This is the directory where our scripts are located.
let g:jdm_scripts_dir = 'lib/'
let g:jdm_scripts_suffix = '.vim'

" This is a convenience mechanism to load a local script.
function JdmLoadScript( name )
  echom "Loading " . g:jdm_scripts_dir . a:name . g:jdm_scripts_suffix
  exec ":runtime " . g:jdm_scripts_dir . a:name . g:jdm_scripts_suffix
endfunction

" # Load the vim configuration files
call JdmLoadScript( 'plugins' )
call JdmLoadScript( 'plugin-customizations' )
call JdmLoadScript( 'functions' )
call JdmLoadScript( 'environment' )
call JdmLoadScript( 'keymappings' )

" # Per-Machine/User/Project Customizations
"
" Any machine-specific settings belong in a separate file, where they will be loaded right now.
"
" The first file is in the user's home directory.
if filereadable( "~/.vim.custom" )
  so ~/.vim.custom
endif

" The second is in the directory from where vim was started.
if filereadable( ".vim.custom" )
  so .vim.custom
endif

