:set number
:set relativenumber
:set tabstop=4
:set ic
:set path=.,~/.config/,~/Programming/
:set tags=./tags,tags;$HOME

noremap <leader>s <cmd>:w <cr>

" Remap leader
let mapleader=" "

" Python setup
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>

" Go setup
noremap <leader>gr <cmd>:GoRun %<cr>
noremap <leader>gb <cmd>:GoBuild %<cr>
noremap <leader>gl <cmd>:GoLint %<cr>
noremap <leader>gv <cmd>:GoVet<cr>

" Harpoon setup
noremap <leader>h <cmd>:lua require("harpoon.ui").toggle_quick_menu()<cr>
noremap <leader>a <cmd>:lua require("harpoon.mark").add_file()<cr>
noremap <leader>n <cmd>:lua require("harpoon.ui").nav_next()<cr>
noremap <leader>p <cmd>:lua require("harpoon.ui").nav_prev()<cr>
noremap <leader>1 <cmd>:lua require("harpoon.ui").nav_file(1)<cr>
noremap <leader>2 <cmd>:lua require("harpoon.ui").nav_file(2)<cr>
noremap <leader>3 <cmd>:lua require("harpoon.ui").nav_file(3)<cr>
noremap <leader>4 <cmd>:lua require("harpoon.ui").nav_file(4)<cr>

" Add Telescope key bindings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Add NerdTree key bindings
" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>n <cmd>NERDTree<CR>
nnoremap <leader>t <cmd>NERDTreeToggle<CR>

" Turn on Groovbox 
autocmd vimenter * ++nested colorscheme gruvbox

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'nvim-lua/plenary.nvim' 
Plug 'ThePrimeagen/harpoon'
Plug 'fatih/vim-go'

call plug#end()
