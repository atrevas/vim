"-----------------------------------------------------------------------------------------------
" Personal Configurations 
"-----------------------------------------------------------------------------------------------

" Set color scheme
colorscheme desert

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
" Reference: https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

" New split opens below the current window or to its right
set splitbelow splitright
"-----------------------------------------------------------------------------------------------
