execute pathogen#infect()

set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab

if has('mouse')
  set mouse=a
endif

if has("gui_running")
  set guifont=Terminus\ 9
  colorscheme aldmeris
  set guioptions=aeigtm
  " Use 
  if maparg('<C-I>', 'n') ==# ''
    nnoremap <silent> <C-I> :set guifont=Terminus\ 18<CR>
  endif
endif

