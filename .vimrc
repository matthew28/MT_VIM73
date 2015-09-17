"------------------�]�w����X������---------------------------------------------
set fileencodings=utf-8,big5,gbk,euc-jp,euc-kr,utf-bom,iso8859-1,cp936
set encoding=utf8 
set tenc=utf8
"----------------------------------------------------------------------------------------

"set tags=/home/matthew/linux_rpi_3.8.y/tags   " �]�wtag �ɪ���m
set tags=/home/matthew/linux/tag               " �]�wtag �ɪ���m
set completeopt=longest,menu
" debian.vim


syntax on "�}�һy�k�[�G
"-------------- ��ܻy�k�[�G���t��A�t���ɥؿ�(/usr/share/vim/vim72/colors)-----   
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

"-------------------VIM ��U���ɮת��B�z-----------------------------------------------------
filetype on                           " Vim����������˴��\��O�_�w���}
filetype plugin on                    " �p�Gplugin���A��ON�A����N�|�bVim���B������ҥؿ��U�[������������������
filetype indent on                    " ���\vim�����P���������w�q���P���Y�i�榡
"---------------------------------------------------------------------------------------------

set nocompatible                       " VIM ���ϥΩM VI �ۮe���Ҧ�
"set sm
set background=dark                   " �]�w vim �I����񬰲`�� ,�A�]�i�H�]�wlight (�L��)   
set tabstop=4                         " tab ���r����
set softtabstop=4                     " 4 �Ӫťզr�����N�@�� Tab
set shiftwidth=4                      " �]�w�Y�Ƽe�� = 4 
set cindent                           " C�y�����Y��Ұ�
set autoindent                        " �s�W�[����M�e�@��ϥάۦP���Y��Φ�
set showmatch                         " �]�m�ǰt�Ҧ��A��������J�@�ӥ��A���ɷ|�ǰt���������ӥk�A��
set linebreak                         " �b�ťթμ��I�Ÿ����a��ӧ��A���]���ݿù����A�ä��|���J EOL       
set whichwrap=b,s,<,>,[,] 
"set mouse=nv                            "�b Normal mode �M Visual mode ���ϥηƹ� 
set mouse=a                             " all previous modes
set cursorline                          " ��ܥثe����Ц�m
set number                              " ��ܦ渹
set autochdir                           "�۰ʤ������e�ؿ������e���Ҧb���ؿ�
set history=50        " �O�d 50 �ӨϥιL�����O 
set laststatus=2  "�û���ܵe�����U�˼ƲĤG�檬�A�C 
set ruler      " ��ܥk�U���]�w��(�q�`�t�Xset laststatus=2)   
set showcmd     "�b���A�C��ܥثe�Ұ��檺���O 
set showmode    "�b���A�C��ܥثe���Ҧ��A�Ҧp�O Insert mode �άO Visual mode 
set incsearch        "�[�j���M��\��A�b��J patern �ɷ|�ߧY�������ʦܥثe��J��patern �W
set hlsearch   "�M��ɡA�ŦX�r��|�ϥժ��ܡC�w�] off�C�p�G�z�O�ϥ� vim ���w�]�� vimrc �ɪ��ܡA�|�]�b F8 ��Ӥ���
"    nManagerWindowLayout='FileExplorer|TagList'
"---------------------------------------------------------------------------

nmap wm :WMToggle<cr>
echo 'set_quick_command_key'
"------------------------ VIM �]�w�ֳt��----------------------------------------

"------------------------ VIM���� Layout �}��----------------------------------------
nmap <F8>   :TrinityToggleAll<CR> 
nmap <F7>   :TrinityToggleSourceExplorer<CR>
nmap <F6>  :TrinityToggleTagList<CR> 
nmap <F5>  :TrinityToggleNERDTree<CR>

"-------------�sĶ�X����,�ݿ��~ ����U�@�ӿ��~---------------------------
nmap <c-j>  :cn<CR>
"-------------�sĶ�X����,�ݿ��~ ����W�@�ӿ��~---------------------------
nmap <c-k>  :cp<CR>

"nnoremap�N�bnormal�Ҧ��U(�g��esc�Z���Ҧ�)�ͮ�. �j�Mcommand.
nnoremap <silent> <F3> :Grep<CR>
nmap <s-F9> viwy:vimgrep /\<<C-R>"\>/g **/*.[ch] **/*.[cpp]<CR>
nmap <c-e> :cs find e <C-R>=expand("<cword>")<CR><CR>
"---------------------------------------------------------------------------
"set tags=~/tag"