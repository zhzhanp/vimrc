set nocompatible
set number
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>
imap <F2> import pdb;pdb.set_trace()
nmap J 5j
nmap K 5k
map <C-n> :NERDTreeToggle<CR>
set statusline+=%F
set nocompatible              " be iMproved, required
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

Plugin 'SirVer/ultisnips' | Plugin 'honza/vim-snippets'
Plugin 'python-mode/python-mode', { 'branch': 'develop' }
Plugin 'vim-airline/vim-airline'

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
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:pymode_python = 'python3'

let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-R>'
