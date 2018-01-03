    syntax enable
    filetype on "检测文件的类型
    filetype plugin on
    filetype plugin indent on
    "fortran语言制表符设置
    let fortran_have_tabs=1
    let g:neocomplcache_enable_at_startup = 1
    "comment
    " ctags 
"    sudo apt-get install exuberant-ctags
    "set tags+=/usr/bin/ctags

    set tags=tags
    map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
    " find path

    set runtimepath^=~/.vim/bundle/
    set runtimepath^=~/.vim/after/indent/
    set runtimepath^=~/.vim/bundle/neocomplcache.vim/
    set runtimepath^=~/.vim/bundle/nerdcommenter.vim/
    filetype plugin indent on	
    set nocompatible            " 关闭 vi 兼容模式
"syntancsearchet incsearchet incsearchx high light  
    syntax on  
    "show the line number  
    set nu  
    "let the tabstop equal 4  
    set tabstop=4
    "set the autoindent on  
    set autoindent  
    "set the match time is one tenth second  
    set matchtime=1  
    "high light the search  
    set hlsearch 
    set expandtab
    "把python的tab自动转换为空格
    autocmd FileType python set textwidth=100
    "set the c language indent format   
    set cindent  
    "set the indent width  
    set shiftwidth=4
    set backspace=2  
    "set show status on  
    set ruler  
    "
    set ignorecase
    set smarttab
    set expandtab
    
    "set show mode on  
    set showmode  
    set showmatch
    set nohls
    set incsearch
    "   set foldmethod=syntax  
    setlocal foldlevel=1  
   " 选中状态下 Ctrl+c 复制
    vmap <C-c> "+y
    set smartindent  
    set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
    set fileformats=unix
       set termencoding=utf-8
          set encoding=utf-8
	  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79

:syntax on


" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
