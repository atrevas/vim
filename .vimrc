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
    colorscheme default
endif

" Basic settings
set number			" Turn on line number
set relativenumber		" Turn on relative line number
set cursorline			" Turn on highlighting of the current line

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
set hidden	                " Allow hidden buffers
set iskeyword+=-		" Add the hyphen character
