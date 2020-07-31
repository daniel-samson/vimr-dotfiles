" Plugins
call plug#begin('~/.local/share/nvim/plugged')
"
" Sensible defaults
Plug 'tpope/vim-sensible'

" Toggle Comments
Plug 'tpope/vim-commentary'

" Fix repeat last command
Plug 'tpope/vim-repeat'

" Auto saving
Plug '907th/vim-auto-save'

" Auto reloading
Plug 'djoshea/vim-autoread'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Fast Fuzzy Find
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

:call plug#end()

colorscheme slate

" Turn off swap files
set noswapfile

" Set path to recusively search all directories for :find
set path^=**

" Displays all files when we press tab
set wildmenu

""
" Default File Encoding
 set encoding=UTF-8

" Allow plugin based indentation
filetype plugin indent on

" Set soft limit
set textwidth=79
set colorcolumn=+1

""File types
autocmd FileType php setlocal expandtab shiftwidth=4 softtabstop=4 textwidth=119 number
autocmd FileType json setlocal expandtab shiftwidth=2 softtabstop=2 number
autocmd FileType js setlocal expandtab shiftwidth=2 softtabstop=2 number
autocmd FileType html setlocal expandtab shiftwidth=2 softtabstop=2 textwidth=119 number
autocmd FileType css setlocal expandtab shiftwidth=2 softtabstop=2 number
autocmd FileType sass setlocal expandtab shiftwidth=2 softtabstop=2 number
autocmd FileType scss setlocal expandtab shiftwidth=2 softtabstop=2 number
autocmd FileType csv setlocal number
autocmd FileType sql setlocal number
autocmd FileType py setlocal number
autocmd FileType rb setlocal number
autocmd FileType xml setlocal number
autocmd FileType vim setlocal number
autocmd FileType sh setlocal number

" Default Indentation
set expandtab
set shiftwidth=4
set softtabstop=4

" Auto saving
let g:auto_save = 1
let g:auto_save_silent = 1

"" File Editing
""
" Toggle Comment
nmap <D-/>  gcc
vmap <D-/>  gcc
imap <D-/>  <ESC>gcc

" Duplicate Line
vnoremap <D-d> Yp
inoremap <D-d> <Esc>yypi
nnoremap <D-d> <Esc>yyp

" Move line up
imap <C-D-k> <Esc>ddkkpi

" Move line down
imap <C-D-j> <Esc>ddpi

" Create new line
nmap <Enter> i<Enter>

" Delete current line
nmap <BS> i<BS>

" Remap indentation to Tab
nnoremap <TAB> >>
nnoremap <S-TAB> <<
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

" Emulate Shift Selection
nnoremap <S-Up> <S-v>k
inoremap <S-Up> <S-v>k
vnoremap <S-Up> k
nnoremap <S-Down> <S-v>j
inoremap <S-Down> <S-v>j
vnoremap <S-Down> j
nnoremap <S-Left> <C-v>h
inoremap <S-Left> <C-v>h
vnoremap <S-Left> h
nnoremap <C-S-Left> <C-v>b
inoremap <C-S-Left> <C-v>b
vnoremap <C-S-Left> b
nnoremap <S-Right> <C-v>l
inoremap <S-Right> <C-v>l
vnoremap <S-Right> l
nnoremap <C-S-Right> <C-v>e
inoremap <C-S-Right> <C-v>e
vnoremap <C-S-Right> e

""
" Fast Fuzzy Find
set rtp+=~/.fzf

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1, fzf#vim#with_preview('right:60%'))
  " \   'echo '.shellescape(<q-args>), 1, fzf#vim#with_preview('right:60%'))
  " \   'rgtags '.shellescape(<q-args>), 1, fzf#vim#with_preview('right:60%'))
"" Lines
nmap <D-f> :Lines<cr>
imap <D-f> <ESC>:Lines<cr>
vmap <D-f> <ESC>:Lines<cr>
"" Files
nmap <D-e> :call fzf#run({'sink': 'e', 'options': '-m --preview "bat --color always {}"','down': '90%' })<cr>
imap <D-e> <ESC>:call fzf#run({'sink': 'e', 'options': '-m --preview "bat --color always {}"','down': '90%' })<cr>
vmap <D-e> <ESC>:call fzf#run({'sink': 'e', 'options': '-m --preview "bat --color always {}"','down': '90%' })<cr>
"" Words / tags
nmap <D-F> :Rg<CR>
vmap <D-F> <ESC>:Rg<CR>
imap <D-F> <ESC>:Rg<CR>
"" Git commits
nmap <D-g> :Commits<CR>
vmap <D-g> <ESC>:Commits<CR>
imap <D-g> <ESC>:Commits<CR>
"" Opened files
nmap <D-o> :Buffers<CR>
vmap <D-o> <ESC>:Buffers<CR>
imap <D-o> <ESC>:Buffers<CR>

" Auto reload
:autocmd FileChangedShell * :e!

" Window Navigation
tnoremap <D-h> <C-\><C-N><C-w>h
tnoremap <D-j> <C-\><C-N><C-w>j
tnoremap <D-k> <C-\><C-N><C-w>k
tnoremap <D-l> <C-\><C-N><C-w>l
inoremap <D-h> <C-\><C-N><C-w>h
inoremap <D-j> <C-\><C-N><C-w>j
inoremap <D-k> <C-\><C-N><C-w>k
inoremap <D-l> <C-\><C-N><C-w>l
nnoremap <D-h> <C-w>h
nnoremap <D-j> <C-w>j
nnoremap <D-k> <C-w>k
nnoremap <D-l> <C-w>l

" Project Browsing
nnoremap <D-P> :e .<cr>
inoremap <D-P> <Esc>:e .<cr>
vnoremap <D-P> <Esc>:e .<cr>

" Project Browsing (Folder of current file)
nnoremap <D-p> :Explore!<cr>
inoremap <D-p> <Esc>:Explore!<cr>
vnoremap <D-p> <Esc>:Explore!<cr>

" Start terminal
inoremap <D-S-t> <esc>:belowright split term://zsh <cr>
vnoremap <D-S-t> <esc>:belowright split term://zsh <cr>
nnoremap <D-S-t> :belowright split term://zsh <cr>
let g:terminal_scrollback_buffer_size = 100000


" Terminal Emulator Settings
autocmd BufWinEnter,WinEnter term://* startinsert
tnoremap <Esc> <C-\><C-n>:q<cr>


