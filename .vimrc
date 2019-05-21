set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'Tagbar'
Plugin 'othree/xml.vim'
Plugin 'c.vim'
Plugin 'w0rp/ale'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'

" Avoid a name conflict with L9
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just ":PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
syntax on

nmap <F12> :NERDTreeToggle<CR>:TagbarToggle<CR>:set number<CR><C-w>l
nmap <F6> :e<CR>

"设定Ctrl + h/j/k/l为切换到左/下/上/右侧分栏
nmap <C-l> <Esc><C-w>l
nmap <C-h> <Esc><C-w>h
nmap <C-j> <Esc><C-w>j
nmap <C-k> <Esc><C-w>k
"使用Ctrl + n来切换多个文件tab
nmap <C-n> <Esc>:tabnext<CR>
nmap <C-p> <Esc>:tabprevious<CR>

"使用space代替tab键
set expandtab
"使用4个空格代替tab
set tabstop=4
"自动缩进为4格
set shiftwidth=4
"关闭备份文件
set nobackup
"自动加载文件变更
set autoread
"自动保存未保存文件
set autowriteall
"设定高亮行和高亮列
set cursorline
set cursorcolumn

set noswapfile

"设定高亮颜色
hi CursorLine   cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkred
"guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkred
"guifg=white

nmap <F10> gg=G

let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

let g:go_fmt_command = 'goimports'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_snippet_engine = 'neosnippet'

set backspace=indent,eol,start
"add c.vim plugin
let g:C_UseTool_cmake = 'yes'
let g:C_UseTool_doxygen = 'yes'
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"For Solidity
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%{ALEGetStatusLine()}

"ale-setting {{{
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '孬'
let g:ale_completion_enabled = 1
let g:ale_sign_warning = '囍'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['孬 %d', '囍 %d', '完美 OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\   'go': ['golint'],
\}
"}}}
let g:TerminusFocusReporting=0

set encoding=utf-8
