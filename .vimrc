"------------------設定中文碼的辨識---------------------------------------------
set fileencodings=utf-8,big5,gbk,euc-jp,euc-kr,utf-bom,iso8859-1,cp936
set encoding=utf8 
set tenc=utf8
"----------------------------------------------------------------------------------------

set tags=/home/matthew/linux_rpi_3.8.y/tags   " 設定tag 檔的位置
"set tags=/home/matthew/linux/tags               " 設定tag 檔的位置
set completeopt=longest,menu
" debian.vim

"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

set nocompatible                       " VIM 不使用和 VI 相容的模式
filetype off

"-------------------設定Vundle的啟動及相關配件安裝------------------------------------------------------------------
" 　記得又執行 ：BundleInstall 做套件安裝 或 BundleClean 進行套件移除
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	silent !mkdir -p ~/.vim/bundle
	!git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"Bundle "scrooloose/syntastic"
"Bundle "The-NERD-tree"
Bundle "scrooloose/nerdtree"
Bundle "taglist.vim"
Bundle "wesleyche/Trinity" 
"Bundle "wesleyche/SrcExpl" 
Bundle "SrcExpl" 
Bundle "brookhong/cscope.vim"
Bundle "yegappan/grep"
Bundle "Valloric/YouCompleteMe"
"Plugin 'Valloric/YouCompleteMe'
"if !filereadable(vundle_readme)
"echo "Installing Vundle.."

":BundleList    "      - list configured bundles
":BundleInstall
":BundleSearch(!) foo " - search(or refresh cache first) for foo
":BundleClean(!)     " - confirm(or auto-approve) removal of unused
"endif


"-------自動補全設定 snipmate--------
" for eq.   for() 按下tab 會自動補全 
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'honza/vim-snippets'
"-------------------------------------


if 0
	let iCanHazVundle=1
	let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
	if !filereadable(vundle_readme)
		echo "Installing Vundle.."
		silent !mkdir -p ~/.vim/bundle
		silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
		let iCanHazVundle=0
	endif
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
	"My Bundle list
	"Bundle 'gmarik/vundle'
	"Bundle 'Valloric/YouCompleteMe'
	"Bundle "davidhalter/jedi"
	Bundle "scrooloose/syntastic"
	Bundle "The-NERD-tree"
	Bundle "taglist.vim"
endif 
"----------------------------------------------------------------------------------------


"-------------------VIM 對各類檔案的處理-----------------------------------------------------
filetype on                           " Vim的文件類型檢測功能是否已打開
filetype plugin on                    " 如果plugin狀態時ON，那麼就會在Vim的運行時環境目錄下加載該類型相關的插件
filetype indent on                    " 允許vim為不同類型的文件定義不同的縮進格式
"---------------------------------------------------------------------------------------------
syntax on "開啟語法加亮
"-------------- 選擇語法加亮的配色，配色檔目錄(/usr/share/vim/vim72/colors)-----   
"colorscheme blue  
"colorscheme darkblue  
"colorscheme default  
"colorscheme delek  
"colorscheme desert  
"colorscheme elflord  
"colorscheme evening  
"colorscheme koehler  
"colorscheme morning  
"colorscheme murphy  
"colorscheme pablo  
"colorscheme peachpuff  
colorscheme ron  
"colorscheme shine  
"colorscheme slate  
"colorscheme torte  
"colorscheme zellner
"colorscheme ron 
"---------------------------------------------------------------------------------------------


"set sm
set background=dark                   " 設定 vim 背景對比為深色 ,你也可以設定light (淺色)   
set tabstop=4                         " tab 的字元數
set softtabstop=4                     " 4 個空白字元取代一個 Tab
set shiftwidth=4                      " 設定縮排寬度 = 4 
set cindent                           " C語言的縮格啟動
set autoindent                        " 新增加的行和前一行使用相同的縮格形式
set showmatch                         " 設置匹配模式，類似當輸入一個左括號時會匹配相應的那個右括號
set linebreak                         " 在空白或標點符號的地方來折行，但也仍屬螢幕折行，並不會插入 EOL       
set whichwrap=b,s,<,>,[,] 
"set mouse=nv                            "在 Normal mode 和 Visual mode 中使用滑鼠 
set mouse=a                             " all previous modes
set cursorline                          " 顯示目前的游標位置
set number                              " 顯示行號
set autochdir                           "自動切換當前目錄為當前文件所在的目錄
set history=50        " 保留 50 個使用過的指令 
set laststatus=2  "永遠顯示畫面底下倒數第二行狀態列 
set ruler      " 顯示右下角設定值(通常配合set laststatus=2)   
set showcmd     "在狀態列顯示目前所執行的指令 
set showmode    "在狀態列顯示目前的模式，例如是 Insert mode 或是 Visual mode 
set incsearch        "加強式尋找功能，在鍵入 patern 時會立即反應移動至目前鍵入之patern 上
set hlsearch   "尋找時，符合字串會反白表示。預設 off。如果您是使用 vim 的預設的 vimrc 檔的話，會設在 F8 鍵來切換
"    nManagerWindowLayout='FileExplorer|TagList'
"---------------------------------------------------------------------------

nmap wm :WMToggle<cr>
echo 'set_quick_command_key'
"------------------------ VIM 設定快速鍵----------------------------------------

"------------------------ VIM視窗 Layout 開啟----------------------------------------
nmap <F8>   :TrinityToggleAll<CR> 
nmap <F7>   :TrinityToggleSourceExplorer<CR>
nmap <F6>  :TrinityToggleTagList<CR> 
nmap <F5>  :TrinityToggleNERDTree<CR>

"-------------編譯出錯時,看錯誤 跳到下一個錯誤---------------------------
nmap <c-j>  :cn<CR>
"-------------編譯出錯時,看錯誤 跳到上一個錯誤---------------------------
nmap <c-k>  :cp<CR>

"nnoremap就在normal模式下(狂按esc后的模式)生效. 搜尋command.
nnoremap <silent> <F3> :Grep<CR>
nmap <c-f> viwy:vimgrep /\<<C-R>"\>/g **/*.[ch] **/*.[cpp]<CR>
"nmap <s-F9> viwy:vimgrep /\<<C-R>"\>/g **/*.[ch] **/*.[cpp]<CR>
nmap <c-e> :cs find e <C-R>=expand("<cword>")<CR><CR>
"---------------------------------------------------------------------------
