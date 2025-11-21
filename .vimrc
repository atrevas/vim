unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

"-----------------------------------------------------------------------------------------------
" Personal Configurations 
"-----------------------------------------------------------------------------------------------

" Theme
" Set color scheme
" From: https://stackoverflow.com/questions/33376597/two-different-colorscheme-for-vim-based-on-gui-and-terminal-version-of-macvim
" 
if has("gui_running")
    colorscheme slate
else
    colorscheme desert
endif
set termguicolors

" Basic settings
set number			" Turn on line number
set relativenumber		" Turn on relative line number
set cursorline			" Turn on highlighting of the current line
set nowrap                      " Don't wrap lines

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

" Split behavior
set splitbelow splitright	" New split opens below the current window or to its right

" Search settings
set incsearch			" Incremental search on
set ignorecase			" Case insensitive search
set smartcase                   " Case sensitive if uppercase in search
set nohlsearch                  " Don't highlight search results 

" Behavior settings
" Inegration with the system clipboard
" Reference: https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
set clipboard^=unnamed,unnamedplus
set hidden	                " Allows hidden buffers
set iskeyword+=-		" Add the hyphen character as part of a word

" Key Mappings
let g:mapleader = " "
nnoremap <Leader>e :Lexplore<CR>
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" Enable the Man built-in plugin
runtime ftplugin/man.vimo

" Netrw settings
let g:netrw_banner = 0		" Disable header banner
let g:netrw_liststyle = 3	" Tree style listing
let g:netrw_winsize = 20	" Fills 25% of the window
