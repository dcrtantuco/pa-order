" automatic vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'neoclide/coc-solargraph', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-stylelint', {'do': 'yarn install --frozen-lockfile'}

" colorscheme
Plug 'nightsense/snow'

" essentials
"
" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" fzf vim wrapper
Plug 'junegunn/fzf.vim'

" default config
Plug 'tpope/vim-sensible'

" automatically adjusts indent levels
Plug 'tpope/vim-sleuth'

" provide mappings to easily add, change parenthesis, etc
Plug 'tpope/vim-surround'

" comment/uncomment made easy
Plug 'tpope/vim-commentary'

" git wrapper
Plug 'tpope/vim-fugitive'

" jump to any location specified by two characters
Plug 'justinmk/vim-sneak'

" language pack
Plug 'sheerun/vim-polyglot'

" language specific
"
" write html code faster
" Plug 'rstacruz/sparkup'

" run rspec inside vim
" Plug 'thoughtbot/vim-rspec'

" wisely add 'end' in ruby files
Plug 'tpope/vim-endwise'

" preview css color in code
Plug 'ap/vim-css-color'

" fancy stuff
"
" tree explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" minimalist statusline
Plug 'itchyny/lightline.vim'

" time tracking and metrics
Plug 'wakatime/vim-wakatime'

" fancy startup screen
Plug 'mhinz/vim-startify'

" shows keybindings in popup, same as spacemacs
Plug 'liuchengxu/vim-which-key'

" visual selection made easy
Plug 'terryma/vim-expand-region'

" helps you stop repeating the basic movement keys
Plug 'takac/vim-hardtime'

call plug#end()
