let mapleader="\<Space>"

"pretty colors
set termguicolors
syntax on

"little options
set incsearch
set hls
set ai
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number

"cursor line on insert mode
:autocmd InsertEnter,InsertLeave * set cul!
"remap save to CTRL-s
noremap <silent> <C-S>         :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
noremap <silent> <C-Q>          :qa!<CR>
vnoremap <silent> <C-Q>         <C-C>:qa!<CR>
inoremap <silent> <C-Q>         <C-O>:qa!<CR>

"rebind window switching
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
"rebind tab navigation
nmap <silent> <Space>w :tabclose <CR> 
nmap <silent> <Space>l :tabnext <CR> 
nmap <silent> <Space>h :tabprevious <CR> 
nmap <silent> <Space>n :tabnew <CR>
nmap <silent> <Space>d :lcd %:p:h <CR>
" 
"hit return again to clear search highlighting
nnoremap <CR> :noh<CR><CR> 
"remap fuzzy search
nmap <Space>o :FZF <CR>

nmap <F8> :TagbarToggle<CR>
nmap <Space>e :NERDTreeToggle<CR>


" ----------options for solarized theme
" default value is "normal", Setting this option to "high" or "low" does use the 
" same Solarized palette but simply shifts some values up or down in order to 
" expand or compress the tonal range displayed.
let g:neosolarized_contrast = "normal"

" Special characters such as trailing whitespace, tabs, newlines, when displayed 
" using ":set list" can be set to one of three levels depending on your needs. 
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "normal"

" I make vertSplitBar a transparent background color. If you like the origin solarized vertSplitBar
" style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1

" If you wish to enable/disable NeoSolarized from displaying bold, underlined or italicized 
" typefaces, simply assign 1 or 0 to the appropriate variable. Default values:  
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
set background=light

"--------------Grepper
nnoremap <leader>ga :Grepper -tool rg<cr>

"---------------Plugs
call plug#begin('~/.config/nvim/plugged')
"Plug 'elmcast/elm-vim'
Plug 'iCyMind/NeoSolarized'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mhinz/vim-grepper'
Plug 'vimwiki/vimwiki'
Plug 'neovimhaskell/haskell-vim'

call plug#end()

colorscheme NeoSolarized
