syntax on

set ttyfast

" Enable mouse use in all modes
set mouse=a
"
" " Set this to the name of your terminal that supports mouse codes.
" " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2


set nocp
set incsearch
set hlsearch
set ruler
set showcmd
set et
set t_Co=256
set shiftwidth=4
set tabstop=4
" set bg=dark
set smartcase
set autochdir
" set clipboard=unnamed

hi Search ctermbg=7

" Vundle -----------------------------------------------------------

set nocompatible " be iMproved, required
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'suan/vim-instant-markdown'
Bundle 'tpope/vim-surround'
Bundle 'chriskempson/base16-vim'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'airblade/vim-gitgutter'
Plugin 'mxw/vim-jsx'
Plugin 'facebook/vim-flow'
Plugin 'tmhedberg/matchit'

call vundle#end()            " required
filetype plugin indent on    " required

" END VUNDLE --------------------------------------

""""""""""""""
"  Snippets  "
""""""""""""""

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"""""""""""""""
"  syntastic  "
"""""""""""""""

set statusline+=%{SyntasticStatuslineFlag()}
let g:syntastic_javascript_checkers=["eslint"]
" let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_python_checkers=["flake8"]
let eslint_rules_dir=$ESLINT_RULES_DIR
if eslint_rules_dir != ""
    execute "let g:syntastic_javascript_eslint_args=' --rulesdir ".eslint_rules_dir."'"
endif

"""""""""""
"  ctrlp  "
"""""""""""

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|build$\|bower_components$\|dist$\|node_modules$',
  \ 'file': '\.tmpl.js$\|\.so$\|\.style.css$'
  \ }


"""""""""""""
"  airline  "
"""""""""""""

let g:airline_theme = 'wombat'
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1
set laststatus=2
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_branch_prefix = ''
let g:airline_readonly_symbol = ''
let g:airline_linecolumn_prefix = ''



"""""""""""""""
"  Powerline  "
"""""""""""""""
" set guifont=Anonymous\ Pro\ for\ Powerline:h15
" let g:Powerline_symbols = 'fancy'
" set encoding=utf-8
" set t_Co=256
" set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
" set termencoding=utf-8
" set laststatus=2
" let g:Powerline_mode_V="V·LINE"
" let g:Powerline_mode_cv="V·BLOCK"
" let g:Powerline_mode_S="S·LINE"
" let g:Powerline_mode_cs="S·BLOCK"
" let g:miniBufExplForceSyntaxEnable = 1
" set noshowmode " powerline gives the mode

"""""""""""""""""
"  colorscheme  "
"""""""""""""""""
set background=dark
colorscheme base16-ashes

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%121v.\+/

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" remap 'page down" to the space key
nnoremap <SPACE> <PAGEDOWN>

" Instantly tweak .vimrc and apply changes
nmap <silent> ;v        :next $MYVIMRC<CR>
augroup VimReload
    autocmd! BufWritePost $MYVVIMRC nested :source $MYVVIMRC
augroup END

" Alternatively use
nnoremap <C-l> :tabnext<CR>
nnoremap <C-h> :tabprev<CR>
" nnoremap <silent> <C-n> :tabnext<CR>
" nnoremap <silent> <C-p> :tabprevious<CR>

set noai
