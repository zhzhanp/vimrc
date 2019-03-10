set nocompatible
set number
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>
imap <F2> import pdb;pdb.set_trace()
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Initialize plugin system
call plug#end()


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:pymode_python = 'python3'

