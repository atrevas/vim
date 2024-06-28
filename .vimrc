"-----------------------------------------------------------------------------------------------
" Personal Configurations 
"-----------------------------------------------------------------------------------------------

" Set color scheme
" From: https://stackoverflow.com/questions/33376597/two-different-colorscheme-for-vim-based-on-gui-and-terminal-version-of-macvim
" 
if has("gui_running")
    colorscheme slate
else
    colorscheme default
endif

" Turn on line number
set number

" Turn on relative line number
set relativenumber

" Turn on highlighting of the current line
set cursorline

" Configurations to work with Python
syntax on
filetype indent plugin on

" Put temp files in the /tmp folder
" References:
"  https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
"  https://superuser.com/questions/193250/how-can-i-distinguish-current-operating-system-in-my-vimrc
"
if has("unix")
	set backupdir=/tmp//
	set directory=/tmp//
	set undodir=/tmp//
endif

" New split opens below the current window or to its right
set splitbelow splitright
"-----------------------------------------------------------------------------------------------
