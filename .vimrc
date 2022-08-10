" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/vimux'
" Add plugins here

call vundle#end()
filetype plugin indent on
" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" highlight cursor line (could also do cursorcolumn)
set cursorline
" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.

" set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

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

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" set ts=4 sw=4
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd Filetype make setlocal noexpandtab


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

