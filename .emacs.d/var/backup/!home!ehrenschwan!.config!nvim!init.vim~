""""""""""""""""""""""""""""""""""""
" leader shortcuts
"""""""""""""""""""""""""""""""""""""

" no op space
nnoremap <SPACE> <Nop>

" leader is comma
let mapleader = " "

" jk is escape
inoremap jk <esc>

""""""""""""""""""""""""""""""""""""
" shortcuts
"""""""""""""""""""""""""""""""""""""

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

""""""""""""""""""""""""""""""""""""
" ui config
""""""""""""""""""""""""""""""""""""

" turn hybrid line numbers on
set number relativenumber

" highlight current line 
set cursorline


" visual autocomplete for command men
set wildmenu            

" redraw only when we need to.
set lazyredraw

" highlight matching [{()}]
set showmatch

"""""""""""""""""""""""""""""""""""""
" auto-pairs
""""""""""""""""""""""""""""""""""""

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

"""""""""""""""""""""""""""""""""""""
" indents
"""""""""""""""""""""""""""""""""""""

" replace tabs with spaces
set expandtab

" 1 tab = 2 spaces
set softtabstop=2 
set shiftwidth=2

" when deleting whitespace at the beginning of a line, delete 
" 1 tab worth of spaces (for us this is 2 spaces)
set smarttab

" load filetype-specific indent files
filetype indent on

" when creating a new line, copy the indentation from the line above
set autoindent

" smart indenting
set smartindent

"""""""""""""""""""""""""""""""""""""
" search
"""""""""""""""""""""""""""""""""""""

" Ignore case when searching
set ignorecase
set smartcase

" highlight search results (after pressing Enter)
set hlsearch

" turn off search highlight
nnoremap <leader>, :nohlsearch<CR>

"""""""""""""""""""""""""""""""""""""
" vim-plug 
"""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'dag/vim-fish'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'frazrepo/vim-rainbow'
Plug 'pangloss/vim-javascript'
Plug 'dart-lang/dart-vim-plugin'
Plug 'uiiaoo/java-syntax.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'jooize/vim-colemak'

call plug#end()

"""""""""""""""""""""""""""""""""""""
" colors
"""""""""""""""""""""""""""""""""""""

" syntax
syntax enable

" background
set background=dark

" colorscheme
" colorscheme solarized

"""""""""""""""""""""""""""""""""""""
" folding
"""""""""""""""""""""""""""""""""""""

" enable folding
set foldenable

" open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" space open/closes folds
nnoremap <leader><space> za

" fold based on indent level
set foldmethod=indent

""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""

set runtimepath^=~/.vim/bundle/ctrlp.vim

" change key map
let g:ctrlp_map = '<leader>f'

let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_use_caching = 1

""""""""""""""""""""""""""""""""""""
" vim-javascript
""""""""""""""""""""""""""""""""""""

" concealing characters
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"

"""""""""""""""""""""""""""""""""""
" vim-rainbow 
"""""""""""""""""""""""""""""""""""

let g:rainbow_active = 1

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

""""""""""""""""""""""""""""""""""
" keyboard shortcuts
""""""""""""""""""""""""""""""""""

nnoremap <C-s> :w<CR>

""""""""""""""""""""""""""""""""""
" vim-airline
""""""""""""""""""""""""""""""""""

" let g:airline_theme = 'solarized'
" let g:airline_solarized_bg = 'dark'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '¶'

" remove trailing whitespace error
let g:airline#extensions#whitespace#enabled = 0

" clear warning section
let g:airline_section_warning=''

"""""""""""""""""""""""""""""""
" coc.nvim
"""""""""""""""""""""""""""""""""

nnoremap <leader>gd <Plug>(coc-definition)
nnoremap <leader>gr <Plug>(coc-references)

" Make <CR> auto-select the first completion item and notify coc.nvim to format on enter
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

