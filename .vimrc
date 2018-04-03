call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rstacruz/sparkup'
Plug 'tpope/vim-sensible'

Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'briancollins/vim-jst'
" Plug 'takac/vim-hardtime'
" Plug 'tpope/vim-vinegar'

" " easy navigation for rails projects
" Plug 'tpope/vim-rails'
" " runs rubocop and displays the results in vim
" Plug 'ngmy/vim-rubocop'

" " code completion engine
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'wakatime/vim-wakatime'
" navigation between panes and vim
Plug 'christoomey/vim-tmux-navigator'
" wisely add 'end' in ruby files
Plug 'tpope/vim-endwise'
" run your favorite search tool in vim
Plug 'mileszs/ack.vim'
" provide mappings to easily add, change parenthesis, etc
Plug 'tpope/vim-surround'
" git wrapper
Plug 'tpope/vim-fugitive'
" " display the indention levels with thin vertical lines
" Plug 'Yggdroot/indentLine'
" highlights enclosing tags
Plug 'Valloric/MatchTagAlways'
" comment/uncomment made easy
Plug 'tpope/vim-commentary'

" run rspec inside vim
Plug 'thoughtbot/vim-rspec'

Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'elixir-editors/vim-elixir'
Plug 'mxw/vim-jsx'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" " vim rubocop
" let g:vimrubocop_keymap = 0
" nmap <Leader>r :RuboCop<CR>

" vim-rspec mappings
map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>a :call RunAllSpecs()<CR>

colorscheme spacegray

" search hit color
highlight Search ctermfg=black ctermbg=lightyellow

" " automatically starts vim-hardmode
" let g:hardtime_default_on = 1

" " allow jjj but not jjjj
" let g:hardtime_maxcount = 3

" delete trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e

" remove hls on insert mode
autocmd InsertEnter * :let @/=""

" close vim when the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
    \ && b:NERDTree.isTabTree()) | q | endif

" " automatically starts NERDTree
" autocmd VimEnter * NERDTree

" " disable netrw, use nerdtree by default
" let loaded_netrwPlugin = 1

let g:NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1

autocmd FileType javascript.jsx runtime! ftplugin/html/sparkup.vim
autocmd FileType *.ejs runtime! ftplugin/html/sparkup.vim

let g:indentLine_color_term = 100
let g:fzf_action = { 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
" let g:airline_theme = 'simple'
let g:jsx_ext_required = 0
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx': 1,
    \ 'eruby': 1 }

if executable('ag')
  " use ggreer/the_silver_searcher in ack.vim
  let g:ackprg = 'ag --vimgrep -i'

  " include hidden files in search, ignore .git
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif

" " map fzf to \t and disable in nerdtree window
" nnoremap <expr> <leader>t (expand('%') =~ 'NERD_tree' ? '' : ':FZF<esc>')

" show / hide NERDTree
nmap <tab> :NERDTreeToggle<cr>

" find
map \f :Ack!<space>

" FZF
map \t :FZF<esc>

" map <tab> :Lexplore<esc>

" map jj to <esc>
inoremap jj <esc>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-l> :wincmd l<cr>

command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

set pastetoggle=<F3>
set hls
set clipboard=unnamed
set splitright
set nobackup
set nowritebackup
set noswapfile
set ignorecase
set breakindent
set synmaxcol=250

" "
" map <F2> :retab <CR> :w <CR>

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" show current line number
set number
set scrolloff=10

" " copy to buffer
" vmap <C-c> :w! ~/.vimbuffer<CR>
" nmap <C-c> :.w! ~/.vimbuffer<CR>
" " paste from buffer
" map <C-p> :r ~/.vimbuffer<CR>
"
set formatoptions-=cro
