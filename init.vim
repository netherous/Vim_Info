set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable


set tags=tags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/

call plug#begin("~/.nvim/plugged")
Plug 'gruvbox-community/gruvbox'

Plug 'cdelledonne/vim-cmake'
let g:cmake_generate_options = ['-DCMAKE_EXPORT_COMPILE_COMMANDS=1']
" The following are examples of dSyntax onifferent formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plug 'L9'
" Git plugin not hosted on GitHub

"Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)"

"Plug 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}

Plug 'octol/vim-cpp-enhanced-highlight'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


Plug 'scrooloose/nerdtree'


Plug 'itchyny/lightline.vim'



Plug 'https://github.com/tpope/vim-commentary'


Plug 'jiangmiao/auto-pairs'

Plug 'honza/vim-snippets'



Plug 'rust-lang/rust.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_disable_startup_warning = 1
Plug 'dense-analysis/ale'
let g:ale_virtualtext_cursor = 2
let g:ale_virtualtext_prefix = ">#>"
let g:ale_disable_lsp = 0
let g:ale_linters = {'cpp': ['clang', 'g++']}

" let g:ale_open_list = 0
" let g:ale_list_vertical = 1
" let g:ale_list_window_size = 50
" let g:ale_sign_column_always = 1
" let g:ale_lint_on_save = 1
"
Plug 'https://github.com/bfrg/vim-cpp-modern'

let g:cpp_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

let $FZF_DEFAULT_COMMAND = 'ag -g ""'


let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
map <C-p> :Files<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

" Plug 'https://github.com/ctrlpvim/ctrlp.vim'
" ignore files in .gitignore
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" All of your Plugs must be added before the following line
" All of your Plugs must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

" Setting for Personal reasons
set exrc
set guicursor = ""
set mouse=a
set relativenumber
set number
set tabstop=4
set softtabstop=4

set shiftwidth=4
set guifont=Menlo\ Regular:h14

set noerrorbells
set smarttab
set showcmd
set autoindent
set smartindent
set cindent
set clipboard=unnamedplus
set nohlsearch
set incsearch
set nobackup
set noswapfile

set laststatus=2
set path+=**
set wildmenu
set scrolloff=8
set signcolumn=yes

" set cursorline
set showcmd
set autowrite
set autoread
set textwidth=109
" set colorcolumn=110
highlight ColorColumn ctermbg= darkgray
set t_Co=256
colorscheme gruvbox
set backspace=indent,eol,start
set nowrap
set splitbelow
set splitright
set lazyredraw



"customized snippets
nnoremap ,tcpp :-1read ~/code/competitive_programing/comptemp1.cpp<CR>42j
nnoremap ,tpy :-1read ~/code/competitive_programing/comptemp.py<CR>5j
nnoremap ,tjava :-1read ~/code/competitive_programing/comptemp.java<CR>5j
nnoremap ,tusaco :-1read ~/Documents/C++\ Programs/tusaco.cpp<CR>47j
nnoremap ,<F2> :ALEDisable<CR>
nnoremap ,<F3> :ALEEnable<CR>

map <F5> :<C-U>!g++ -w -O -std=c++17 % -o %:r && ./%:r <CR>
nnoremap ,t :term<CR>
nnoremap ,vt :vsplit <bar> term<CR>
nnoremap ,st :split <bar> term<CR>
nnoremap <leader>wsvt :sp<bar>resize 27<bar>vsp<bar>vert resize 55<bar>term<CR>
nnoremap ,nerd :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

tnoremap <Esc> <C-\><C-n>
nnoremap <F4> :q!<CR>
nnoremap <F6> :wqall<CR>

