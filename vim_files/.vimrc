set filetype=sql
set nu
set autoindent
set cindent
set si
set ai
set sw=4
set ts=4
set nobackup
set bs=2
set nocp

set textwidth=79
set wrap
set nowrapscan
set nobackup
set history=999
set sc 

set sts=0
set magic

set sol
set sm
set background=dark
set hls
set nows
set ic
set scs
set autowrite "auto save
set autoread
set showmatch

set laststatus=2
set statusline=%h%F%m%r%=[%l:%c(%p%%)]

colorscheme evening
"colorscheme jellybeans
set nocompatible 
set foldmethod=manual
if has("syntax")
	syntax on
	syntax enable
endif
filetype plugin on
filetype plugin indent on
filetype on
"===================================================
"plugin
"===================================================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'Tagbar'
Plugin 'AutoComplPop'
Plugin 'snipMate'
Plugin 'SrcExpl'
Plugin 'taglist.vim'
Plugin 'Trinity'

call vundle#end()

"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"	Bundle 'gmarik/vundle'
"	Bundle 'git://git.wincent.com/command-t.git'
"==================================================="
"grep
"==================================================="
nmap ,g :grep -r -n "<cword>" ./* <CR><CR>:cw<CR>
nmap ,j :vertical stjump <C-R>=expand("<cword>")<CR><CR>

imap { {<CR><CR>}<up>
imap ( ()<left>
imap [ []<left>

"==================================================="
"folding
"==================================================="
"<F1> : folding , <F2> : unfolding 
"map <F1> v]}zf
"map <F2> zo

"==================================================="
"tab
"==================================================="
map <F1> :tabnew<CR>
map <F2> :tabn<CR>
map <F3> :tabclose<CR>

set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb

if filereadable("./cscope.out")
	cs add cscope.out
else 
	cs add /usr/include/cscope.out
endif
"source $HOME/cscope_maps.vim
set csverb

set tags=./tags,tags
set tags+=/usr/include/tags

"==================================================="
"TrinityToggle set
"==================================================="
nmap <F4> :TagbarToggle<CR>
let g:tagbar_left=1
let g:tagbar_width=40
let g:tagbar_autofocus=1
let g:tagbar_autoclose=0
"==================================================="
"Tag list
"==================================================="
nmap <F5> :TlistToggle<CR>
"Tlist setting
"let Tlist_Ctags_Cmd="/usr/bin/ctags.exe"
let Tlist_Inc_Winwidth=0
let Tlist_Exit_OnlyWindow=0
let Tlist_Use_Right_Window=0
let Tlist_Auto_Open=0
let Tlist_Sort_Type="name"
let Tlist_WinWidth=35


"==================================================="
"Source Explorer config
"==================================================="
nmap <F6> :SrcExplToggle<CR> 
nmap <C-H> <C-W>h 
nmap <C-J> <C-W>j 
nmap <C-K> <C-W>k 
nmap <C-L> <C-W>l 

let g:SrcExpl_winHeight= 10
let g:SrcExpl_refreshTime=100
let g:SrcExpl_jumpKey="<ENTER>"
let g:SrcExpl_gobackKey="<SPACE>"
let g:SrcExpl_isUpdateTags=0

"==================================================="
"NERDTree set
"==================================================="
nmap <F7> :NERDTree<CR>

let g:NERDChristmasTree = 1 "colorful 효과
let g:NERDTreeAutoCenter = 1 
let g:NERDTreeChDirMode = 1
let g:NERDTreeHighlightCursorline = 1 "현재 커서 위치를 하일라이팅합니다. 기본값은 1
let g:lNERDTreeWinSize = 20 "NERDTree의 폭을 설정합니다.
let g:NERDTreeMinimalUI = 1 "NERDTree에서 ()위에뜀¨는) help/bookmark 메세지를보여주지 않습니다.
let g:NERDTreeShowLineNumbers=1 "라인을 보여줍니다

"==================================================="
"trinity set
"==================================================="
nmap <F8> :TrinityToggleAll<CR>
"==================================================="
"syntastic set
"==================================================="
"execute pathogen#infect()
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag())}
"set statsline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_c_include_dirs = ['/cygdrive/c/Program Files ()x86)/Windows Kits/10/Include/0.0.14393.0/km']
"==================================================="
