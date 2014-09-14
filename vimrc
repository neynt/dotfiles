execute pathogen#infect()

set hlsearch

" Tab width
set tabstop=4
set shiftwidth=4
set expandtab

" Line numbers
set number

" Store swap files in fixed location
set dir=~/.vim/tmp//,.
set undodir=~/.vim/undo//,.
set backupdir=~/.vim/backup//,.

colorscheme slate
"colorscheme jellybeans
"colorscheme lucius
"LuciusDark
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2

if has('mouse')
  set mouse=a
endif

if has("gui_running")
  set guifont=Terminus\ 9
  colorscheme jellybeans
  set guioptions=aeigtm
  " Use 
  if maparg('<C-I>', 'n') ==# ''
    nnoremap <silent> <C-I> :set guifont=Inconsolata\ 17<CR>
  endif
  if maparg('<C-O>', 'n') ==# ''
    nnoremap <silent> <C-O> :set guifont=Terminus\ 9<CR>
  endif
endif

