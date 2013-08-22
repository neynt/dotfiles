execute pathogen#infect()

set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

if has('mouse')
  set mouse=a
endif

if has("gui_running")
  set guifont=Tewi\ 9
  colorscheme molokai
  set guioptions=aeigtm
  " Use 
  if maparg('<C-I>', 'n') ==# ''
    nnoremap <silent> <C-I> :set guifont=Inconsolata\ 17<CR>
  endif
  if maparg('<C-O>', 'n') ==# ''
    nnoremap <silent> <C-O> :set guifont=Tewi\ 9<CR>
  endif
endif

