set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of dSyntax onifferent formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)"

"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'octol/vim-cpp-enhanced-highlight'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


Plugin 'scrooloose/nerdtree'


Plugin 'itchyny/lightline.vim'



Plugin 'commentary.vim'

Plugin 'Syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:cpp_class_scope_highlight=1
let g:cpp_class_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
"let g:syntastic_cpp_checkers = ['gcc']
"let g:syntastic_cpp_compiler = 'gcc'
"let g:syntastic_cpp_compiler_option = 'std=c++14'

Plugin 'jiangmiao/auto-pairs'

Plugin 'Valloric/YouCompleteMe'
"let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
"let g:ycm_show_diagnostic_ui=0
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let b:did_autoload_ultisnips_map_key=1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEnableSnipMate = 1

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line 

" Setting for Personal reasons
set exrc
set mouse=a
set tabstop=4
set shiftwidth=4
set guifont=Menlo\ Regular:h14
colorscheme desert

set smarttab
set showcmd
set autoindent
set smartindent
set cindent
set clipboard=unnamedplus
set hlsearch

set laststatus=2
set path+=**
set wildmenu

" set cursorline
set showcmd
set number
set autowrite
set autoread
set textwidth=109
" set colorcolumn=110
highlight ColorColumn ctermbg= darkgray
set backspace=indent,eol,start
set nowrap
set splitbelow
set splitright
set lazyredraw
"customized snippets
nnoremap ,tcpp :-1read ~/Documents/C++\ Programs/compcpptemp.cpp<CR>42j
nnoremap ,tusaco :-1read ~/Documents/C++\ Programs/tusaco.cpp<CR>47j
nnoremap ,<F2> :SyntasticCheck<CR>
nnoremap ,<F3> :SyntasticReset<CR>

map <F5> :<C-U>!g++ -Wall -O -std=c++17 % -o %:r && ./%:r <CR>
nnoremap ,nerd :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
