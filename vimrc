
" 定义快捷键的前缀，即<Leader>
let mapleader=","

" vundle begin
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype off                " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"  Improved C++ STL syntax highlighting
Bundle 'STL-improved'

" Displays tags in a window, ordered by class etc, i used it instead of taglist
Bundle 'wesleyche/SrcExpl'

"Bundle 'Valloric/ListToggle'

"Code snippets engine for Vim
Bundle 'xptemplate'

"Bundle 'DoxygenToolkit.vim'

" C/C++ header files should be guarded against multiple inclusions using preprocessor directives
"Bundle 'tczengming/headerGatesAdd.vim'

Bundle 'genutils'
Bundle 'lookupfile'

" Fuzzy file, buffer, mru, tag, ... finder with regexp support.
Bundle 'kien/ctrlp.vim'

" Fast file navigation
Bundle 'wincent/Command-T'

" Preview the definition of variables or functions in a preview window
Bundle 'autopreview'

" Echo the function declaration in the command line for C/C++
Bundle 'echofunc.vim'

Bundle 'grep.vim'
Bundle 'a.vim'
Bundle 'Color-Sampler-Pack'
Bundle 'txt.vim'

Bundle 'mru.vim'
Bundle 'YankRing.vim'

Bundle 'tpope/vim-surround.git'
Bundle 'ShowMarks'

" Display error marks on line which contain errors after compilation
Bundle 'cuteErrorMarker'

Bundle 'git://github.com/Lokaltog/vim-easymotion.git'

" jedi-vim  plugin for python code.
Bundle 'davidhalter/jedi-vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""显示增强-主题""""""""""""""""""""""""""""""""""""""""""""""
"主题 solarized
Bundle 'altercation/vim-colors-solarized'
set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors, need before setting the colorscheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
" let g:solarized_contrast="normal"
" let g:solarized_visibility="normal"
" solarized theme
colorscheme solarized
set background=dark
hi Normal  ctermfg=252 ctermbg=none     " Transparent background


"主题 molokai
"Bundle 'tomasr/molokai'
"let g:molokai_original = 1

" 显示行末的空格
Bundle 'ShowTrailingWhitespace'

" 快速去行尾空格 [, + <Space>]
Bundle 'bronson/vim-trailing-whitespace'
map <leader><space> :FixWhitespace<cr>

"""""""""""""""""""""显示增强-主题 end""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""快速导航""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""NERDTree""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
"目录导航
Bundle 'scrooloose/nerdtree'
"NERD Tree提供一些常用快捷键来操作目录：
"通过hjkl来移动光标 "o打开关闭文件或目录，如果想打开文件，必须光标移动到文件名
"t在标签页中打开 p到上层目录
"P到根目录  K到同目录第一个节点  P到同目录最后一个节点
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
"let NERDTreeDirArrows=0
"let g:netrw_home='~/bak'
"close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
" s/v 分屏打开文件
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'

Bundle 'jistr/vim-nerdtree-tabs'
" 设置NerdTree
"启用或禁用NERDTreeTabsToggle
map <Leader>n <plug>NERDTreeTabsToggle<CR>
"启用或禁用NERD Tree，NERD Tree
map <Leader>m :NERDTreeToggle<CR>
map <Leader>f :NERDTreeMirror<CR>
" NERDTree options
" 关闭同步
let g:nerdtree_tabs_synchronize_view=0
let g:nerdtree_tabs_synchronize_focus=0
" 自动开启nerdtree
" let g:nerdtree_tabs_open_on_console_startup=1
" Auto change the root directory
let NERDTreeChDirMode=2
let g:NERDTreeWinSize = 30

" Vim Workspace Controller
Bundle "szw/vim-ctrlspace"
let g:airline_exclude_preview = 1
hi CtrlSpaceSelected guifg=#586e75 guibg=#eee8d5 guisp=#839496 gui=reverse,bold ctermfg=10 ctermbg=7 cterm=reverse,bold
hi CtrlSpaceNormal   guifg=#839496 guibg=#021B25 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE
hi CtrlSpaceSearch   guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
hi CtrlSpaceStatus   guifg=#839496 guibg=#002b36 gui=reverse term=reverse cterm=reverse ctermfg=12 ctermbg=8

""快速浏览和操作Buffer
"Bundle 'fholgado/minibufexpl.vim'
"":help buffer 
"" :bn   打开当前buffer的下一个buffer
"" :bp   打开当前buffer的前一个buffer
"" :b"num"   打开指定的buffer
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
""let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
""解决FileExplorer窗口变小问题
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplorerMoreThanOne=1
""let g:miniBufExplorerMoreThanOne=2
"let g:miniBufExplCycleArround=1
"
"标签导航
Bundle 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_left = 1
let g:tagbar_expand = 1
let g:tagbar_compact = 1
let g:tagbar_singleclick = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30

" recommend fetch it from https://github.com/tczengming/autoload_cscope.vim.git which support c and cpp
"基于索引的代码查看工具，它可以帮助你更详细的搜索和查看代码。有了cscope的支持，vim不仅可以查看函数，变量，宏的定义，还可以更详细的搜索函数调用，文件包含，变量引用，甚至对一个符号进行全局搜索！
Bundle 'tczengming/autoload_cscope.vim'


" 函数列表
" :Tlist（正常模式下使用命令） 显示函数列表。
" d（在taglist窗口下使用） 从列表中删除文件。
" +（在taglist窗口下使用） 展开文件。
" -（在taglist窗口下使用） 折叠文件。
" =（在taglist窗口下使用） 折叠所有文件。
" x（在taglist窗口下使用） 显示或隐藏正常窗口
Bundle 'taglist.vim'
"（写入配置文件.vimrc中） 如果希望列表在右侧显示，则加入这个配置，默认是左侧。
let Tlist_Use_Right_Window = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""语言相关"""""""""""""""""""""""""""""""""""""""
"###### Python #########
" python fly check, 弥补syntastic只能打开和保存才检查语法的不足
Bundle 'kevinw/pyflakes-vim'
let g:pyflakes_use_quickfix = 0

" for python.vim syntax highlight
Bundle 'hdima/python-syntax'
let python_highlight_all = 1

"""""""""""""""""""""""""""""""""语言相关 end"""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""自动补全""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrl-p（插入模式下使用命令） 跳出补全菜单。
" ctrl-n（在跳出补全菜单后） 下一个结果。
" ctrl-p（在跳出补全菜单后） 上一个结果。
" ctrl-y（在跳出补全菜单后） 选择当前结果。
" ctrl-x ctrl-f（插入模式下使用命令） 文件名补全。
" ctrl-x ctrl-i（插入模式下使用命令） 包含的头文件。
" ctrl-x ctrl-]（插入模式下使用命令） ctags（将在下文中介绍）符号补全。
" ctrl-x ctrl-o（插入模式下使用命令） omni补全，需要设置omnifunc变量。

" " 代码自动补全
" "迄今为止用到的最好的自动VIM自动补全插件
"Bundle 'Valloric/YouCompleteMe'
" "重启 :YcmRestartServer
" "youcompleteme  默认tab  s-tab 和自动补全冲突
" "let g:ycm_key_list_select_completion=['<c-n>']
" let g:ycm_key_list_select_completion = ['<Down>']
" "let g:ycm_key_list_previous_completion=['<c-p>']
" let g:ycm_key_list_previous_completion = ['<Up>']
" let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
" let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
" let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
" let g:ycm_cache_omnifunc = 0        " 禁止缓存匹配项,每次都重新生成匹配项
" let g:ycm_collect_identifiers_from_comments_and_strings = 0   "注释和字符串中的文字也会被收入补全
" let g:ycm_seed_identifiers_with_syntax = 0   "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
" "let g:ycm_collect_identifiers_from_tags_files = 1 "会导致一直更新标签，python2 占用内存80%以上
" " 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
" " old version
" "if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
" "    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
" "endif
" " new version
" if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
"     let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" endif
"
" 直接触发自动补全
"let g:ycm_key_invoke_completion = '<C-Space>'
" 跳转到定义处, 分屏打开
"let g:ycm_goto_buffer_command = 'horizontal-split'
" nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
" 黑名单,不启用
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'gitcommit' : 1,
      \}

"Insert模式下在输入的时候自动补全单词，如果补全正确 可以按Tab键接受，否则可以不管它继续输入或者按Ctrl-n， Ctrl-p切换补全。 注意是输入三个字符后才开始补全。
Bundle 'word_complete.vim'

"在命令行状态下，按 Ctrl-P 或 Ctrl-N 补全光标前面的词，候选词来源于当前buffer
Bundle 'CmdlineComplete'
" CmdlineComplete E.g: you want to search for "elephant" in the buffer, just type /ele and
" press Ctrl-P. So long as "elephant" is in the buffer, you will get "ele"
" completed into "elephant".

""""""""""""""""""""""自动补全 end""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""git 操作""""""""""""""""""""""""""""""""""""""""""""""""""
" git.  git操作还是习惯命令行,vim里面处理简单diff编辑操作
Bundle 'tpope/vim-fugitive'
":Gdiff  :Gstatus :Gvsplit
nnoremap <leader>ge :Gdiff<CR>
" not ready to open
" <leader>gb maps to :Gblame<CR>
" <leader>gs maps to :Gstatus<CR>
" <leader>gd maps to :Gdiff<CR>  和现有冲突
" <leader>gl maps to :Glog<CR>
" <leader>gc maps to :Gcommit<CR>
" <leader>gp maps to :Git push<CR>

" 同git diff,实时展示文件中修改的行
Bundle 'airblade/vim-gitgutter'
"查看diff的修改我会比较常用，快捷键 <Leader>hp ,他会显示diff差异
let g:gitgutter_map_keys = 0
let g:gitgutter_highlight_lines = 1
" 只是不喜欢除了行号多一列, 默认关闭,gs时打开
let g:gitgutter_enabled = 1
nnoremap <leader>gs :GitGutterToggle<CR>
"每个diff区块之间跳转（像图中就分了3块）。默认快捷键为 [c 和 ]c
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" edit history, 可以查看回到某个历史状态
Bundle 'sjl/gundo.vim'
nnoremap <leader>h :GundoToggle<CR>

" Flake8 plugin for Vim.
Bundle 'nvie/vim-flake8'
"autocmd FileType python compiler flake8

" compiler plugin for python style checking tool.
"Bundle 'vim-scripts/pylint.vim'
"autocmd FileType python compiler pylint

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""显示增强""""""""""""""""""""""""""""""""""""""""""""""""""

"状态栏增强展示
" 新的airline配置
Bundle 'bling/vim-airline'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

"括号显示增强
Bundle 'kien/rainbow_parentheses.vim'
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
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 40
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

Bundle "https://github.com/edkolev/tmuxline.vim"
augroup tmuxline
    autocmd!
    autocmd VimEnter,ColorScheme * silent! Tmuxline vim_statusline_1
    autocmd VimLeave * !tmux source-file ~/.tmux.conf
augroup END
let g:tmuxline_powerline_separators = 0

""""""""""""""""""""""显示增强 end""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     "启动自动补全
autocmd! bufwritepost .vimrc source %     "vimrc文件修改之后自动加载。

syntax enable "开启代码高亮
syntax on "打开高亮
set completeopt=longest,menu  "自动补全配置,让Vim的补全菜单行为与一般IDE一致
set cindent              "使用C语言的缩进方式
set autoindent "在开始一个新行时对该行施以上一行的缩进方式.”
set showmatch   " 显示括号配对show matching paren
set nocompatible    " 不兼容旧版本  no compative vi
set smartindent  " 智能对齐
set mps+=<:>        " 让<>可以使用%跳转also apply matching to < and >

"让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
set whichwrap=b,s,<,>,[,]

" Underlined long lines
au BufRead,BufNewFile *.c,*.sh,*.lua,*.py,*.vim 2match Underlined /.\%81v/

" Highlight long lines
"au BufWinEnter * let w:m1=matchadd('Search', '\%<88v.\%>81v', -1)
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

"highlight .txt, required txt.vim
au BufRead,BufNewFile * setfiletype txt

" Restore the last quit position when open file.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \     exe "normal g'\"" |
     \ endif

" Enter key will simply select the highlighted menu item, just as <C-Y> does
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

autocmd InsertLeave * if pumvisible() == 0|pclose|endif   " autoclose preview window when leave insert mode

set nofoldenable  "关闭开启时默认折叠命令
" "set default foldmethod
set foldmethod=indent

"close modelines model
set modelines=0

nnoremap <c-a> <c-w>

" 默认方向键左右可以切换buffer
noremap <leader>bn :MBEbn<CR>
noremap <leader>bp :MBEbp<CR>
noremap <leader>bd :MBEbd<CR>

"命令行增强模式， ctrl－a／e 到行首／尾
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"映射<C-hjkl>切换上下左右的窗口
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-k> <C-W>k
map <C-l> <C-W>l

set number
"set autochdir

" Set to auto read when a file is changed from the outside
set autoread                 "当文件在外部被改变时，Vim自动更新载入
set noswapfile "关闭交换文件
set cmdheight=1               "命令部分高度为1
set nobackup
" set backupdir=~/.vim/backup
" set directory=~/.vim/backup

" 状态栏
set laststatus=2            ""启动显示状态行(1),总是显示状态行(2
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
"set statusline=%f%m%r%h%w%=[ASCII=\%03.3b]\ [HEX=\%02.2B]\ [%04l,%04v][%p%%]

" 获取当前路径，将$HOME转化为~
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction

"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}E5%h\ \ \ Line:\ %l/%L:%c
set statusline=%F%m%r%h%w\ %{&ff}\ %Y\ [ascii:%b\ hex:0x\%02.2B]\ [%{(&fenc\ ==\ \"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %=%l/%L,%v\ %p%%
"set statusline=%2*%n%m%r%h%w%*\ %F\ %1*[FORMAT=%2*%{&ff}:%{&fenc!=''?&fenc:&enc}%1*]\ [TYPE=%2*%Y%1*]\ [COL=%2*%03v%1*]\ [ROW=%2*%03l%1*/%3*%L(%p%%)%1*]\


set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set colorcolumn=79,80,81
set formatoptions+=cql

" HIGHLIGHT
" cterm 表示为原生vim设置样式
" ctermbg 设置终端vim的背景色
" ctermfg 设置终端vim的前景色
" guibg 和 guifg 分别是设置gvim的背景色和前景色
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
highlight OverLength ctermbg=7 guibg=SeaGreen
match OverLength /\%78v.\+/

highlight LineNr ctermbg=14 guibg=SeaGreen

"开启光亮光标行
set cursorline
highlight CursorLine cterm=NONE  ctermbg=black ctermfg=green guibg=NONE guifg=NONE

"开启高亮光标列
set cursorcolumn " nocursorcolumn 
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green 
" highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green 


set list
set listchars=tab:\|\ ,     " display tab as '|'

"字符设置
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5
set encoding=utf-8

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
set termencoding=utf-8

"新建文件编码
set fenc=utf-8

set hidden

"匹配括号的规则，增加针对html的<>
set matchpairs=(:),{:},[:],<:>

set ruler "总是在Vim窗口的右下角显示当前光标的行列信息”
set showcmd "在Vim窗口的右下角显示一个完整的命令已经完成的部分”
set showmode    "显示当前工作模式
set incsearch "在键入要搜索的字串的同时就开始搜索当前已经键入的部分”

" Indent related, see indent.txt
" gN Place C++ scope declarations N characters from the indent of the
"    block they are in.  (default 'shiftwidth').  A scope declaration
"    can be "public:", "protected:" or "private:".
" :N Place case labels N characters from the indent of the switch()
" N-s namespace
" (N    When in unclosed parentheses, indent N characters from the line with the unclosed parentheses.
set cinoptions=g0,:0,N-s,(0

" Tab related
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab               " Use spaces instead of tabs

set hid             " allow to change buffer without saving
set shortmess=atI   " shortens messages to avoid 'press a key' prompt
set lazyredraw      " do not redraw while executing macros (much faster)

" Set Number format to null(default is octal) , when press CTRL-A on number
" like 007, it would not become 010
set nf=

" In Visual Block Mode, cursor can be positioned where there is no actual character
set ve=block

set ignorecase  " Set search/replace pattern to ignore case
set smartcase   " Set smartcase mode on, If there is upper case character in the search patern, the 'ignorecase' option will be override.
set hlsearch    " highlight search
set magic       " Enable magic matching正则表达式匹配形式
set wildmenu    " enables a menu at the bottom of the vim/gvim window.
"set mouse=a    " Enable mouse usage (all modes) in terminals

"esc的映射
imap jk <esc>

"使用tab键来代替%进行匹配跳转
nnoremap <tab> %
vnoremap <tab> %

"使用<leader>空格来取消搜索高亮
"nnoremap <leader><space> :noh<cr>

"使用,v来选择刚刚复制的段落，这样可以用来缩进
nnoremap <leader>v v`]

"使用,w来垂直分割窗口，这样可以同时查看多个文件,如果想水平分割则<c-w>s
"nnoremap <leader>w <c-w>v<c-w>l
nnoremap <leader>wc <c-w>c
nnoremap <leader>ww <c-w>w

"使用<leader>t来控制Tab的切换
nnoremap <leader>t gt
nnoremap <leader>r gT

" showmarks setting
let showmarks_enable = 0            " disable showmarks when vim startup
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let showmarks_ignore_type = "hqm"   " help, Quickfix, non-modifiable

" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

" Switching between buffers.
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
inoremap <C-h> <Esc><C-W>h
inoremap <C-j> <Esc><C-W>j
inoremap <C-k> <Esc><C-W>k
inoremap <C-l> <Esc><C-W>l

" Set Up and Down non-linewise
noremap <Up> gk
noremap <Down> gj

" use Meta key(Windows:Alt) to move cursor in insert mode.
" Note: if system install "Lingoes Translator",
"   you will need change/disabled hot key.
noremap! <M-j> <Down>
noremap! <M-k> <Up>
noremap! <M-h> <left>
noremap! <M-l> <Right>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

" open ctags entries in a new tab
" nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

set pastetoggle=<F2>

" grep.vim
let g:Grep_Skip_Dirs = 'RCS CVS SCCS .git .svn'
let g:Grep_Skip_Files = '*.out *.bak *~ *.swp *.log *tags *.o *.a *.so'
nnoremap <silent> <F3> :Grep<CR>
nnoremap <silent> <F4> :Rgrep<CR>

" autopreview
let g:AutoPreview_enabled = 0
let g:EchoFuncKeyNext='<C-n>'
let g:EchoFuncKeyPrev='<C-p>'
nnoremap <F6> :AutoPreviewToggle<CR>
inoremap <F6> <ESC>:AutoPreviewToggle<CR>i

"ctrlp
let g:ctrlp_user_command = 'find %s -type f'

set tags=tags;

" -- cscope --
let g:autocscope_menus=0
if has("cscope")
    set csprg=/usr/bin/cscope
    " Use both cscope and ctag
    set cscopetag
    " Show msg when cscope db added
    set cscopeverbose
    " Use cscope for definition search first
    set cscopetagorder=0
endif

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" fix ctrl+] incorrect when cscope togethoer with tag
nmap <C-]> :tj <C-R>=expand("<cword>")<CR><CR>

"Fast remove highlight search
nmap <silent> <leader><cr> :noh<cr>

" whether to show balloons  press <leader>l to toogle
let g:syntastic_enable_balloons = 1
let g:syntastic_always_populate_loc_list = 1
" for tmux to automatically set paste and nopaste mode at the time pasting (as
" happens in VIM UI)
 
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif
 
  let tmux_start = "<Esc>Ptmux;"
  let tmux_end = "<Esc>"
 
  return tmux_start . substitute(a:s, "<Esc>", "<Esc><Esc>", 'g') . tmux_end
endfunction
 
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
 
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

