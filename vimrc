" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

set nocompatible              " be iMproved, required
filetype off                  " required

""" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""" git plugin
Plugin 'airblade/vim-gitgutter'

""" indentLine plugin
Plugin 'Yggdroot/indentLine'

""" airline plugin
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

""" parentheses plugin
Plugin 'kien/rainbow_parentheses.vim'

""" LeaderF plugin
Plugin 'Yggdroot/LeaderF'

""" easymotion plugin
Plugin 'easymotion/vim-easymotion'

""" trailing whitespace plugin
Plugin 'bronson/vim-trailing-whitespace'

""" comment plugin
Plugin 'scrooloose/nerdcommenter'

""" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""
""" Put your non-Plugin stuff after this line """
"""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set number

set cursorline    " 光标所在行阴影
set cursorcolumn  " 光标所在列阴影

set autoindent
set smartindent

set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set smarttab
%retab!

set incsearch
set hlsearch

let mapleader=','
let maplocalleader = '_'

nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

" 粘贴模式
set pastetoggle=<F4>

" 回到上次编辑位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" set for color scheme
colorscheme  molokai
let g:molokai_original = 1
let g:rehash256 = 1

" set encoding
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8

" set for airline
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" set for parentheses
let g:rbpt_colorpairs = [
        \ ['brown',       'RoyalBlue3'],
        \ ['Darkblue',    'SeaGreen3'],
        \ ['darkgray',    'DarkOrchid3'],
        \ ['darkgreen',   'firebrick3'],
        \ ['darkcyan',    'RoyalBlue3'],
        \ ['darkred',     'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['brown',       'firebrick3'],
        \ ['gray',        'RoyalBlue3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['Darkblue',    'firebrick3'],
        \ ['darkgreen',   'RoyalBlue3'],
        \ ['darkred',     'DarkOrchid3'],
        \ ['darkcyan',    'SeaGreen3'],
        \ ['red',         'firebrick3'],
        \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" set for LeaderF
let g:Lf_ShortcutF = '<C-P>'

" set for easymotion
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><leader>l <Plug>(easymotion-lineforward)

" set for trailing whitespace
map <leader><space> :FixWhitespace<cr>

" set for nerdcommenter
let g:NERDSpaceDelims=1
"<leader>cc        注释
"<leader>cu        取消注释
"<leader>c<space>  注释/取消注释, 智能判断
"<leader>cy        先复制, 再注解, p可以进行黏贴
