call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'catppuccin/nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" jedi-vim
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"

let g:deoplete#enable_at_startup = 1

" airline
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1

" neoformat
" Handle file not recognized
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1

" neomake
let g:neomake_python_enabled_makers = ['pylint']

" highlightedyank
hi HighLightedYankRegion cterm=reverse gui=reverse
let g:highlightedyank_highlight_duration = 1000

" NERDtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" nvim
colorscheme catppuccin
set background=dark

set clipboard+=unnamedplus
set number
set tabstop=4
set shiftwidth=4
set expandtab
