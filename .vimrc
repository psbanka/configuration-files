syntax on
set noai
set nocp
set incsearch
set hlsearch
set ruler
set showcmd
set et
set shiftwidth=4
set tabstop=4
set bg=dark
set smartcase

hi Search ctermbg=7

call pathogen#infect() 
set statusline+=%{SyntasticStatuslineFlag()}

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" remap 'page down" to the space key
nnoremap <SPACE> <PAGEDOWN>

" Instantly tweak .vimrc and apply changes
nmap <silent> ;v        :next $MYVIMRC<CR>
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

nnoremap <silent> <C-n> :tabnext<CR>
nnoremap <silent> <C-p> :tabprevious<CR>
