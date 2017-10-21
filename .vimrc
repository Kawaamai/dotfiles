"; ~/.vimrc

" **************************************
" * VARIABLES
" **************************************

" the following lines allows for terminals to use gui colors instead of being
" limited to the 256 color pallet. COOL! Would need to change around some stuff
" for it to work though.
"set termguicolors

set nu
"set nonu				" line numbering off
"set autoindent			" autoindent on
set smartindent			" starts indenting based on language of code
set noerrorbells		" bye bye bells :)
set modeline			" show what I'm doing
set showmode			" show the mode on the dedicated line (see above)
set nowrap			" no wrapping!
set ignorecase			" search without regards to case
"set backspace=indent,eol,start	" backspace over everything
set fileformats=unix,dos,mac	" open files from mac/dos
set exrc			" open local config files
set nojoinspaces		" don't add white space when I don't tell you to
set ruler			" which line am I on?
set showmatch			" ensure Dyck language
set mat=2
set smartcase
set incsearch			" incremental searching
set nohlsearch			" meh
set bs=2			" fix backspacing in insert mode
set formatoptions+=ro
set cursorline
" automatic comment insertion

"match ErrorMsg /\%81v.\+/
set colorcolumn=101

set noexpandtab
set shiftwidth=4
set tabstop=4
set foldlevelstart=20
set smarttab

" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{c,cpp,h,hpp,java} set expandtab
"au BufRead,BufNewFile *.{c,cpp,h,hpp,java} set formatoptions+=ro
au BufRead,BufNewFile *.{c,cpp,h,hpp,java} set shiftwidth=2
au BufRead,BufNewFile *.{c,cpp,h,hpp,java} set tabstop=2
au BufRead,BufNewFile *.{java} set shiftwidth=4
au BufRead,BufNewFile *.{java} set tabstop=4
"au BufRead,BufNewFile *.{c,cpp,h,java} set smarttab
au BufRead,BufNewFile *.{c,cpp,h,hpp,java} setlocal foldmethod=syntax
au Syntax c, cpp, java normal zR
set shiftround

" Do not expand tabs in assembly file.  Make them 8 chars wide.
"au BufRead,BufNewFile *.s set noexpandtab
"au BufRead,BufNewFile *.s set shiftwidth=8
"au BufRead,BufNewFile *.s set tabstop=8


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"if (empty($TMUX))
"  if (has("nvim"))
"    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif

" Show syntax
syntax on
"set t_Co=256
"colors hybrid_reverse_v5
colors hybrid_reverse_v6
"colors onedark
"colors hybrid_material
set bg=dark

"set wildmenu
set wildmode=longest:full
set wildignore=*.0,*.bak,*.data,*.class

" Scrolling control
set scrolloff=2

" enable mouse control
set mouse=a

" For switching between many opened file by using ctrl+j or ctrl+k
map <C-J> :next <CR>
map <C-K> :prev <CR>

" Spelling toggle via F10 and F11
"map <F10> <Esc>setlocal spell spelllang=en_us<CR>
"map <F11> <Esc>setlocal nospell<CR>

" setlocal textwidth=80		" used for text wrapping

function! s:goyo_enter()
	set nu
	set AirlineToggle
endfunction

" Backups.
set backup

" pathogen package runtimepath manager
execute pathogen#infect()

" vim airline config
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='isbdev2'
let g:airline_right_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline#extensions#whitespace#enabled = 0
set laststatus=2
set ttimeoutlen=50
"let g:airline#extensions#whitespace#mixed_indent_algo = 2

" Diplay tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:·

" File headers for class
"function FileHeadingv2()
"	let s:line=line(".")
"	call setline(s:line,   "/*")
"	call append (s:line,   " * Filename:        ".expand("%"))
"	call append (s:line+1, " * Author           Alan Mai")
"	call append (s:line+2, " * Userid:          cs30xamu")
"	call append (s:line+3, " * Date:            ".strftime("%m.%d.%Y"))
"	call append (s:line+4, " * Description:     ")
"	call append (s:line+5, " * Sources of help: ")
"	call append (s:line+6, " */")
"	unlet s:line
"endfunction
"
"imap <F4> <ESC>mz:execute FileHeadingv2()<CR>`z5jA

"let g:hybrid_custom_term_colors=1

" remaps the f1 key
map <F1> <Esc>
imap <F1> <Esc>

