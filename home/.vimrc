""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A vimrc file.												   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:	Gabriele Puliti <gabriele.puliti@gmail.com>    "
" Alias: Wabri (https://github.com/Wabri)					   "
" Last change:	2019 5 19									   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To use it, copy it to ~/.vimrc 							   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins will be downloaded under the specified directory.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Declare the list of plugins.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'potatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-sensible'
Plug 'jreybert/vimagit'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'sheerun/vim-polyglot'
Plug 'nanotech/jellybeans.vim' ", { 'tag': 'v1.6' }
Plug 'luochen1990/rainbow'
Plug 'matze/vim-move'
Plug 'vim-ctrlspace/vim-ctrlspace'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => List ends here.
" => Plugins become visible to Vim after this call.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Disable arrow keys in Normal mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Disable arrow keys in Insert mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme by jellybeans
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme jellybeans

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Abilitate rainbow parentesis syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-move key - move selection with Control
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Get the defaults that most users want.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/defaults.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Default save to the original file.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nowritebackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Do not keep a backup file, use versions instead
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Put the number of the line at the left of the text,
" => with the relative distance between the line focused.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Always set autoindenting on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Enable autocompletition
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmode=longest,list,full

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Default split to below and right.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 1 tab == 4 spaces
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=4
set tabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => This can allow to switch to bash terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <C-d> :sh<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Uncomment to prevent non-normal modes showing in powerline
" => and below powerline.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rehash256 = 1
let g:Powerline_symbols='unicode'
let g:Powerline_theme='long'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '➔' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
endif

" This is the nerd tree indicator for git status
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
map <C-\> :NERDTreeToggle<CR>
" This will close vim if only nerd tree tab is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowCollapsible = '▾'

" This is the map to switch between splitted editor
"map <Space>h <C-w>h
"map <Space>j <C-w>j
"map <Space>k <C-w>k
"map <Space>l <C-w>l

" This quit all tab and exit from vim
map qZ :qall<CR>

" Latex settings
let g:polyglot_disable = ['latex']
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Enable folding with the spacebar+f
nnoremap <Space>f za
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" This abilitate the copy and paste to clipboard (on debian you need to install: apt install vim-gnome
vnoremap <F2> "+y
map <F3> "+P

" Switch to alternate file
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

" vim-controlspac
set nocompatible
set hidden
let g:CtrlSpaceDefaultMappingKey = "<C-Space>"
let g:CtrlSpaceSymbols = { "CS": "∥","ALL": "✹" }
let g:CtrlSpaceUseTabline = 1
hi CtrlSpaceSearch guifg=#8ce10b guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
hi CtrlSpaceNormal guifg=#8ce10b guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
hi CtrlSpaceStatus guifg=#8ce10b guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
hi CtrlSpaceSelected guifg=#8ce10b guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
hi link CtrlSpaceNormal   PMenu
hi link CtrlSpaceSelected PMenuSel
hi link CtrlSpaceSearch   Search
hi link CtrlSpaceStatus   StatusLine

" Automatically deletes all end line trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif
