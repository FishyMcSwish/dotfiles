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

"-------------netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20 
let g:netrw_liststyle = 3
let g:netrw_altv = 1

" ----------options for solarized theme
" default value is "normal", Setting this option to "high" or "low" does use the 
" same Solarized palette but simply shifts some values up or down in order to 
" expand or compress the tonal range displayed.
let g:neosolarized_contrast = "high"

" Special characters such as trailing whitespace, tabs, newlines, when displayed 
" using ":set list" can be set to one of three levels depending on your needs. 
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "normal"

" I make vertSplitBar a transparent background color. If you like the origin solarized vertSplitBar
" style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 0

" If you wish to enable/disable NeoSolarized from displaying bold, underlined or italicized 
" typefaces, simply assign 1 or 0 to the appropriate variable. Default values:  
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
set background=dark

"--------------------elm
let g:elm_jump_to_error = 1
let g:elm_make_show_warnings = 1
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1 
let g:elm_format_fail_silently = 1
let g:elm_format_two_spaces = 1
let g:elm_setup_keybindings = 0

au FileType elm nmap <leader>em <Plug>(elm-make)
au FileType elm nmap <leader>ea <Plug>(elm-make-main)
au FileType elm nmap <leader>et <Plug>(elm-test)
au FileType elm nmap <leader>er <Plug>(elm-repl)
au FileType elm nmap <leader>ed <Plug>(elm-error-detail)
au FileType elm nmap <leader>ex <Plug>(elm-show-docs)
au FileType elm nmap <leader>eb <Plug>(elm-browse-docs)

let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

"---------------ALE
nmap <silent> <leader>ap <Plug>(ale_previous_wrap)
nmap <silent> <leader>an <Plug>(ale_next_wrap)
nmap <silent> <leader>ad <Plug>(ale_detail)


"---------------Plugs
call plug#begin('~/.config/nvim/plugged')
Plug 'elmcast/elm-vim'
Plug 'iCyMind/NeoSolarized'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'kbsymanz/ctags-elm'
Plug '/usr/local/opt/fzf'
"Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme NeoSolarized
