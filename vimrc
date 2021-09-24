" use pathogen
execute pathogen#infect()

colorscheme badwolf     " https://vimcolors.com/3/badwolf/dark
set relativenumber      " show relative line numbers
set cursorline          " highlight current line
syntax on               " syntax highlighting
set autoindent          " obvs
set expandtab           " expand tabs to whitespaces
set softtabstop=4
set shiftwidth=4        " tab at 4 whitespaces
set wildmenu            " visual autocomplete for command menu
filetype indent on      " load filetype-specific indent files
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" move backups to the tmp directory
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" airline settings
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
