" disable compatibility with vi
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/vimux'

Plugin 'flazz/vim-colorschemes'

Plugin 'mnishz/colorscheme-preview.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enable type file detection
" filetype on

" enable plugins, load plugin for detected file type
" filetype plugin on

" load indent file for detected file type
" filetype indent on


" syntax highlighting
syntax on

" line numbers
set number

" highlight cursor line (could also do cursorcolumn)
set cursorline

" set shiftwidth to 4 spaces
set shiftwidth=4

" set tab width to 4 columns
set tabstop=4

" use space characters instead of tabs
set expandtab

" don't save backup files
set nobackup

" don't wrap lines
set nowrap

" when searching a file, increment highlighting of characters
set incsearch

" ignore capitals in search
set ignorecase

" override ignorecase if searching for capitals
set smartcase

" show partial command typed
set showcmd

" show mode in
set showmode

" show matching words in search
set showmatch

" highlight when searching
set hlsearch

" set no. of commands to save in history
set history=1000

" enable auto-completion menu after TAB press
set wildmenu

" make wildmenu act like Bash completion
set wildmode=list:longest

" wildmenu ignore list
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

if &diff
    syntax off
endif

colorscheme slate

let mapleader = ","

nnoremap <Leader>a :echo "leader test!"<CR>
nnoremap <Leader>r ebhpldebye
nnoremap <Leader>o o<ESC>
nnoremap <Leader>O O<ESC>


function! VimuxSlime()
    call VimuxRunCommand(@v)
endfunction
" If text is selected, save it in the v buffer and send that buffer
" it to tmux
vmap <Leader>l "vy :call VimuxSlime()<CR>
" Select current paragraph and send it to tmux
nmap <Leader>l vip<Leader>l<CR>

nmap <Leader>k ^v$<Leader>l<CR>

noremap <Leader>m :call cursor(0, len(getline('.'))/2)<CR>

" set laststatus=2
" 
" 
" hi NormalColor guifg=Black guibg=Green ctermbg=46 ctermfg=0
" hi InsertColor guifg=Black guibg=Cyan ctermbg=51 ctermfg=0
" hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=165 ctermfg=0
" hi VisualColor guifg=Black guibg=Orange ctermbg=202 ctermfg=0
" 
" set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
" set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
" set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
" set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}

" nnoremap <Tab> <Esc>
" vnoremap <Tab> <Esc>gV
" onoremap <Tab> <Esc>
" cnoremap <Tab> <C-C><Esc>
" inoremap <Tab> <Esc>`^
" inoremap <Leader><Tab> <Tab>

nnoremap <nowait> jj <Esc>
vnoremap <nowait> jj <Esc>gV
onoremap <nowait> jj <Esc>
cnoremap <nowait> jj <C-C><Esc>
inoremap <nowait> jj <Esc>`^
