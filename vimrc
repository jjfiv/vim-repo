runtime pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Scons hacks
au BufRead,BufNewFile SConstruct setfiletype scons
au BufRead,BufNewFile SConscript setfiletype scons

" SCAML syntax highlighting, pretend it's HAML
au BufRead,BufNewFile *.scaml setfiletype haml

" Taskjuggler
au BufRead,BufNewFile *.tjp,*.tji setfiletype tjp

" JavaCUP hack
au BufRead,BufNewFile *.cup setfiletype cup

" TypeScript assume Makefile
au FileType ts set makeprg=make
set nocp

syntax enable
if has('gui_running')
	set background=dark
	colorscheme solarized
	set gfn=Terminus
	set guioptions-=T
	set guioptions-=r
endif

set directory=~/tmp,/tmp,/var/tmp,.

" Colors!!!

" Use a bearable tab size...
set ts=2
set shiftwidth=2
set expandtab

" Magic indentation
set autoindent
set smartindent
filetype plugin indent on

" Show matching stuff ();
set showmatch
set hls

" Search incrementally
set incsearch

" Word wrap
set linebreak

" Line numbers, ruler
set number
set ruler

" Turn on mouse
set mouse=a

" Enable syntax folding, but start expanded
set foldmethod=syntax
set foldlevelstart=99

" Display leader hint
set showcmd

" Change between bright and dark
call togglebg#map("<F2>")

" Magic run current file
map <f7> :w <lf> :!chmod +x % <lf>
map <f8> :w <lf> :!./% <lf>

noremap k gk
noremap j gj

" path
set path+=src

let g:syntastic_cpp_compiler_options="-Wall -Werror -std=c++0x"
let g:syntastic_cpp_compiler="clang++"
let g:syntastic_ocaml_use_ocamlc = 1

