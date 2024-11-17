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

" Configurations to work with programming languages
syntax on
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete

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

" Turn on incremental search
set incsearch

# Inegration with the system clipboard
# Reference: https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
set clipboard^=unnamed,unnamedplus
"-----------------------------------------------------------------------------------------------
