set nocompatible
set number
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>
nmap <F9> :ClangFormat<CR>
imap <F2> import pdb;pdb.set_trace()
nmap J 5j
nmap K 5k
nmap <C-c> :source ~/.vimrc<CR>
map <C-n> :NERDTreeToggle<CR>
set statusline+=%F
nmap SS :w<CR>
nmap QQ :q<CR>
let mapleader=" "
nmap <leader>t :RangerNewTab<CR>
nmap SQ :wq<CR>
nmap <F3> <Plug>MarkdownPreview<CR>
set expandtab
set shiftwidth=4
set tabstop=4
set noswapfile
filetype off                  " required

" set the untime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rhysd/vim-clang-format'

Plugin 'SirVer/ultisnips' | Plugin 'honza/vim-snippets'
Plugin 'python-mode/python-mode', { 'branch': 'develop' }
Plugin 'vim-airline/vim-airline'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" On-demand loading
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"call plug#begin('~/.vim/plugged')
" Initialize plugin system
"call plug#end()


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<F10>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:pymode_python = 'python3'

let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-R>'
let g:pymode_doc = 0


let g:ycm_auto_trigger = 1
