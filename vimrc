let mapleader = ","
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')




" Avoid a name conflict with L9
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'fholgado/minibufexpl.vim'
" Bundle 'orestis/pysmell'
" Bundle 'tpope/vim-surround'
" Bundle 'vim-scripts/Pydiction'
" Bundle 'vim-scripts/ShowMarks'
" Git plugin not hosted on GitHub
" Keep Plugin commands between vundle#begin/end.
" Pass the path to set the runtimepath properly.
" Plugin 'Raimondi/delimitMate'
" Plugin 'lambdalisue/vim-django-support'
" The following are examples of different formats supported.
" The sparkup vim script is in a subdirectory of this repo called vim.
" git repos on your local machine (i.e. when working on your own plugin)
" let Vundle manage Vundle, required
" non github repos
" plugin from http://vim-scripts.org/vim/scripts.html
" plugin on GitHub repo
" use <leader>pW to call the pythondoc
" vim-scripts repos
"Bundle 'vim-scripts/SrcExpl'
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Shougo/neocomplcache'
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'kogakure/vim-sparkup'
Plugin 'msanders/snipmate.vim'
Plugin 'robhudson/snipmate_for_django'
Plugin 'tristen/vim-sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'thinca/vim-localrc'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/mru.vim'
Plugin 'vim-scripts/pythoncomplete'
" Plugin 'vim-scripts/taglist.vim'

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

syntax on
set bs=2
filetype plugin indent on
filetype plugin on
set number

"Configure python stanard indent
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

"Configure HTML file indent
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab

"Configure NERD TREE
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>N :NERDTreeFind<CR>
let g:NERDTreeDirArrows=0
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Configure the CTags / taglist.vim:
"make sure you have use ctags command making tags file like
"ctags -R -o ~/.ctags /usr/lib/python2.7/dist-packages /usr/local/lib/python2.7/dist-packages
set tags=~/.ctags
" --------------------
" F4: Switch on/off TagList
nnoremap <silent> <F4> :TlistToggle<CR>
" TagListTagName - Used for tag names
highlight MyTagListTagName gui=bold guifg=Black guibg=Orange
" TagListTagScope - Used for tag scope
highlight MyTagListTagScope gui=NONE guifg=Blue
" TagListTitle - Used for tag titles
highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray
" TagListComment - Used for comments
highlight MyTagListComment guifg=DarkGreen
" TagListFileName - Used for filenames
highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue
"let Tlist_Ctags_Cmd = $VIM.'/vimfiles/ctags.exe' " location of ctags tool
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exit_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 1 " split to the right side of the screen
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compact_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 40
" let Tlist_Ctags_Cmd = 'ctags --c++-kinds=+p --fields=+iaS --extra=+q
"--languages=c++'
" very slow, so I disable this
" let Tlist_Process_File_Always = 1 " To use the :TlistShowTag and the :TlistShowPrototype commands without the taglist window and the taglist menu, you should set this variable to 1.
":TlistShowPrototype [filename] [linenumber]"'

"  let Tlist_Show_One_File = 1 " Displaying tags for only one file~
"  let Tlist_Exit_OnlyWindow = 1 " if you are the last, kill yourself
"  let Tlist_Use_Right_Window = 1 " split to the right side of the screen
"  let Tlist_Sort_Type = "order"'
"  let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in
"  the taglist window.
"  let Tlist_Compact_Format = 1 '
"  from the taglist window.
"  let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
"  let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
"  let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag
"  is selected.
"  let Tlist_Enable_Fold_Column = 0 " Don'
"  the taglist window.
"  let Tlist_WinWidth = 40
"  " let Tlist_Ctags_Cmd = '
"  --languages=c++'
"  " very slow, so I disable this
"  " let Tlist_Process_File_Always = 1 '
"  :TlistShowPrototype commands without the taglist window and the taglist
"  menu, you should set this variable to 1.
"  ":TlistShowPrototype ["'
"Configure FuzzyFinder

"Configure NeoComplcache
let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_enable_smart_case = 1

"Configure pythoncomplete
"not work very well with external libs.
"but vim-django-support can rescue it.
autocmd FileType python set omnifunc=pythoncomplete#Complete
" if has("python")
" 	python import sys,os
" 	python sys.path=[]
" 	python sys.path.append('/opt/local/lib/python2.7/site-packages/Twisted-12.1.0-py2.7-macosx-10.4-x86_64.egg/twisted')
" 	python sys.path.append('/opt/local/lib/python2.7')
" 	python sys.path.append('/opt/local/lib/python2.7/plat-darwin')
" 	python sys.path.append('/opt/local/lib/python2.7/plat-mac')
" 	python sys.path.append('/opt/local/lib/python2.7/plat-mac/lib-scriptpackages')
" 	python sys.path.append('/opt/local/lib/python2.7/lib-tk')
" 	python sys.path.append('/opt/local/lib/python2.7/lib-old')
" 	python sys.path.append('/opt/local/lib/python2.7/lib-dynload')
" 	"python os.environ['DJANGO_SETTINGS_MODULE'] = 'djangoProject.settings'
" endif
"Configure pysmell 
"As pysmell is a little slower than pythoncomplete,
"Use this carefully.
"autocmd FileType python set omnifunc=pysmell#Complete
" autocmd FileType python setlocal omnifunc=pysmell#Complete
"make vim save and load the folding of the document each time it loads"
""also places the cursor in the last place that it was left."
" au BufWinLeave * mkview
" au BufWinEnter *.* silent loadview"

"vim will read project.vim in current directory.
"help you write some project specialization configuration
"But this script is replaces the a better plugin:vim-localrc
if filereadable("project.vim") 
	  so project.vim 
endif 

"Configure for django html template snipmate
autocmd FileType html set ft=htmldjango.html

"Configure the code folding:
nnoremap <space> za
vnoremap <space> zf

"Reopen All files when vim runs

"Pydiction path.
" let g:pydiction_location = '~/.vim/bundles/Pydiction/complete-dict'
" let g:pydiction_menu_height = 15

"reopen file closed
"nnoremap <esc> :noh<return><esc>
"nmap <esc> nohlsearch

nnoremap zv ^lv$
let g:Powerline_symbols = 'fancy'

set nowrap

" MRU binding
nnoremap <leader><leader>m :MRU<CR>
nnoremap <leader><leader>M :FufFile<CR>
" nnoremap <leader>N :Tlist<CR>

" Vim as Python IDE hacks
autocmd! bufwritepost .vimrc source %

set mouse=a

noremap <Leader>e :q<CR>
noremap <Leader>E :qa<CR>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

noremap <c-n> :tabNext<CR>
noremap <c-m> :tabnext<CR>

noremap < <gv
noremap > >gv


set nobackup
set nowritebackup
set noswapfile

" Tell vim to remember certain things when we exit
" "  '10  :  marks will be remembered for up to 10 previously edited files
" "  "100 :  will save up to 100 lines for each register
" "  :20  :  up to 20 lines of command-line history will be remembered
" "  %    :  saves and restores the buffer list
" "  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo"'

function! ResCur()
	if line("'\"") <= line("$")
		normal! g`"
		return 1
	endif
endfunction

augroup resCur
	autocmd!
	autocmd BufWinEnter * call ResCur()
augroup END

" delimitMate disable in htmldjango.
" au FileType htmldjango.html let b:delimitMate_autoclose = 0 

" Chinese chracter
" set encoding=utf-8
" set termencoding=utf-8
" set fencs=ucs-bom,utf-8,gb18030,gbk,gb2312,big5,euc-jp,euc-kr,latin1,cp936
" set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
let $LANG="zh_CN.UTF-8"
set fileencodings=utf-8,gb18030,gbk,gb2312,big5
set termencoding=utf-8
set fileencoding=utf-8
set encoding=utf-8
