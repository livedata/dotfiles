" source ~/.vim/runtime/mswin.vim
syntax on

set background=light

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
  filetype indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd       " Show (partial) command in status line.
set showmatch     " Show matching brackets.
set ignorecase    " Do case insensitive matching
set smartcase     " Do smart case matching
set incsearch     " Incremental search
set autowrite     " Automatically save before commands like :next and :make
set hidden        " Hide buffers when they are abandoned
set expandtab     " convert tabs to spaces
set softtabstop=4 " tab of length 2
set shiftwidth=4  " indentation tab to 2 spaces
set nowrap        " do not wrap lines
set scrolloff=4   " Always show 4 lines above and bellow cursor (context)


au BufNewFile,BufRead *.module set filetype=php
au BufNewFile,BufRead *.test set filetype=php
au BufNewFile,BufRead *.install set filetype=php
au BufNewFile,BufRead *.inc set filetype=php


autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType inc set omnifunc=phpcomplete#CompletePHP

set tags=tags;/

if &diff
  set background=dark
  colorscheme peaksea
endif

" custom keybinginds (left key press perform the right key commands)

" Toggle fold
noremap f za
" Close all folds
noremap F zM
" Open all folds
noremap ,f zR

:set number
:set t_Co=256
" colorscheme wombat256
let g:solarized_termcolors=256
colorscheme solarized

set backspace=2
:fixdel

set nomodeline

let Tlist_Sort_Type = "name"
:nmap <F3> :TlistToggle<cr>

" tab navigation like firefox
":nmap <C-S-tab> :tabprevious<CR>
":nmap <C-tab> :tabnext<CR>
":map <C-S-tab> :tabprevious<CR>
":map <C-tab> :tabnext<CR>
":imap <C-S-tab> <Esc>:tabprevious<CR>i
":imap <C-tab> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>
:map <C-w> :tabclose<CR>

:map <S-h> gT
:map <S-l> gt

set wildmode=longest:full
set wildmenu

nmap <C-s> <Esc>:w<CR>
imap <C-s> <Esc>:w<CR>
map <C-s> <Esc>:w<CR>

map <F5> :! php -l %<CR>
map <F6> :! php %<CR>

let treeExplVertical=1
let treeExplWinSize=35
let treeExplDirSort=1
let treeExplNoList=1
:nmap <F4> :VSTreeExplore<cr>

set nobackup
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent

map <PageDown> :set scroll=0<CR>:set scroll^=2<CR>:set scroll-=1<CR><C-D>:set scroll=0<CR>
map <PageUp> :set scroll=0<CR>:set scroll^=2<CR>:set scroll-=1<CR><C-U>:set scroll=0<CR>

nmap <PageDown> :set scroll=0<CR>:set scroll^=2<CR>:set scroll-=1<CR><C-D>:set scroll=0<CR>
nmap <PageUp> :set scroll=0<CR>:set scroll^=2<CR>:set scroll-=1<CR><C-U>:set scroll=0<CR>

inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

map <F5> <Esc>:EnableFastPHPFolds<Cr> 
map <F6> <Esc>:EnablePHPFolds<Cr> 
map <F7> <Esc>:DisablePHPFolds<Cr>

