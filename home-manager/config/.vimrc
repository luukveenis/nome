filetype plugin indent on
syntax on

colorscheme catppuccin-mocha

" Use space as leader
let mapleader = "\<space>"
let g:mapleader = "\<space>"

" Fix tabs
set expandtab
set softtabstop=2
set shiftwidth=2
set scrolloff=10
set noswapfile
set nobackup
set noerrorbells visualbell t_vb=
set number
set hlsearch
set cmdheight=1
set laststatus=2
set showcmd
set list listchars=tab:»·,trail:·
set wildmode=list:longest,list:full
set wildmenu
set splitright
set splitbelow

" Yay, fzy!
function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap <leader>e :call FzyCommand("fd ''", ":e")<cr>
nnoremap <leader>v :call FzyCommand("fd ''", ":vs")<cr>
nnoremap <leader>s :call FzyCommand("fd ''", ":sp")<cr>
nnoremap <leader>fg :call FzyCommand("fd '' $(bundle show $(bundle list \| cut -f 4 -d' ' \| fzy))", ":e")<cr>
