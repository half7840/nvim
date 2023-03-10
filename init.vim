call plug#begin('~/.vim/plugged')

Plug 'brglng/vim-im-select'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'frazrepo/vim-rainbow'
Plug 'wakatime/vim-wakatime'
Plug 'airblade/vim-gitgutter'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim'
Plug 'keith/swift.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'joshdick/onedark.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'edkolev/promptline.vim'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'elzr/vim-json'
Plug 'vim-utils/vim-vertical-move'
Plug 'machakann/vim-highlightedyank'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'osyo-manga/vim-anzu'
Plug 'itchyny/vim-cursorword'
Plug 'blueyed/vim-diminactive'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'goerz/jupytext.vim'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colemak Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" hnei = arrows
    nnoremap n gk|noremap e gj|noremap i l|noremap gn k|noremap ge j
" s/S = inSert
    nnoremap s i|noremap S I
 " k/K = last search
    nnoremap k n|noremap K N
" l/L = BOL / EOL | <c-l> = join lines
    nnoremap l ^|noremap L $|noremap <C-l> J
" j/J = end of word
    nnoremap j e|noremap J E
" _r_ = inneR text objects
    nnoremap r i
    " c-e/c-n/c-m or <cr> = High/Low/Mid
    nnoremap <c-e> H|noremap <c-n> L|noremap <c-m> M
" shift+direction switches split panes
    nnoremap H <C-W>h|noremap I <C-W>l|noremap N <C-W>j|noremap E <C-W>k
" c-h/c-i switches tabs [inoremap <c-i> messes up insert-mode tabbing]
    nnoremap <c-i> <C-PageDown>|nnoremap <c-h> <C-PageUp>
" U = Redo with U
    nnoremap U <C-r>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><F1> :NERDTreeToggle<CR><bar>:TagbarToggle <CR>

	let NERDTreeMapOpenVSplit='r'
	let NERDTreeMapPreviewVSplit='gr'
	let NERDTreeMapOpenExpl = 'f'
	let NERDTreeMapJumpFirstChild ='K'
	let NERDTreeMapJumpLastChild='J'
	let NERDTreeMenuDown='e'
	let NERDTreeMenuUp='n'
	let NERDTreeShowHidden=1
	let NERDTreeIgnore=[".git", ".DS_Store"]
	let g:NERDTreeChDirMode = 1
    let g:NERDTreeWinSize=30
	let g:webdevicons_enable_nerdtree = 1
	let g:NERDTreeGitStatusIndicatorMapCustom = {
                    \ 'Modified'  :'???',
                    \ 'Staged'    :'???',
                    \ 'Untracked' :'???',
                    \ 'Renamed'   :'???',
                    \ 'Unmerged'  :'???',
                    \ 'Deleted'   :'???',
                    \ 'Dirty'     :'???',
                    \ 'Ignored'   :'???',
                    \ 'Clean'     :'??????',
                    \ 'Unknown'   :'?',
                    \ }
	let g:NERDTreeGitStatusUseNerdFonts = 1
	" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

augroup nerdtreehidecwd
	autocmd!
	autocmd FileType nerdtree syntax match NERDTreeHideCWD #^[</].*$# conceal
augroup end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"?????? ??????
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><C-h> :tabprevious<CR>
nnoremap <silent><C-i> :tabnext<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :Files %:p:h<CR>
map <F12> :noh<CR>
map <F3> :TagbarToggle

"lcd /Users/minsukim/Workspace
set number
set showmatch
set hlsearch
set autoindent
set cindent
set autoread
set ts=4
set sts=4
set shiftwidth=4
set clipboard=unnamedplus
set mouse=a
set encoding=UTF-8
set nocompatible
colorschem codedark
" ????????? ????????????
if has("syntax")
" ?????? ????????? ??????
	syntax on
endif

"colorschem onedark


if has('nvim')

	inoremap <silent><expr> <c-space> coc#refresh()
	else
	inoremap <silent><expr> <c-@> coc#refresh()
    endif

    let g:tagbar_position = 'rightbelow'

map <F2> :Files %:p:h<CR>
let g:netrw_keepdir= 0
autocmd BufEnter * silent! lcd %:p:h
    " ------------------------------------
" vim-airline ??????
" ------------------------------------
" powerline-font ?????????
    let g:airline_powerline_fonts = 1
" luna ?????? ??????
    let g:airline_theme = 'codedark'
" tabline ??? ???????????? ?????? ????????? ??????
    let g:airline#extensions#tabline#formatter = 'unique_tail'
" ?????? ????????? ??????????????? ??????
" let g:airline_statusline_ontop = 1
" ????????? ??????
    let g:airline#extensions#tabline#enabled = 1
" ?????? tabline ??? ??????
    let g:airline#extensions#tabline#show_tabs = 1

    let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" ------------------------------------
" coc ??????
" ------------------------------------
"  nvim ????????? 0.5.0 ????????????, ????????? 8.1.1564 ???????????????
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " ??????(sign column) ?????? ?????? ?????? ??????
  set signcolumn=number
endif

" <Tab> ??? ????????? ?????? ???????????? ??????.
" inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" <Backspace> ?????? ????????? ??????, ?????? ???????????? ?????? ??????
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" <Ctrl + Space> ??? ????????? ???????????? ??????
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else  
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" ?????? ??????(botright)??? ??? ??????(new), ?????? ?????? terminal ??? ??????
" ????????? 10 ?????? ?????????(resize) ??? ??? ????????? ??????(winfixheight)??????
" ???????????? ????????????, ????????? ???????????? ???????????? ??????
nnoremap <silent><F3> 
	\:botright new<CR><bar>
	\:terminal<CR><bar><ESC>
	\:resize 10<CR><bar>
	\:set winfixheight<CR><bar>
	\:set nonu<CR><bar>
	\iLS_COLORS=$LS_COLORS:'di=1;33:ln=36'<CR>
"====================================================
"fzf setting
"=====================================================
"
nnoremap <C-p> :Files<Cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Compile Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd filetype python nnoremap <F4> :w <bar> exec '!python3.11 '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>Author
autocmd filetype swift nnoremap <F4> :w <bar> exec '!swiftc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

"=========================================================================
"Vim Wiki
"=========================================================================
let maplocalleader "\\"

let g:vimwiki_conceallevel = 0
