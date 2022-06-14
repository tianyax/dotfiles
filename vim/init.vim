call plug#begin('~/.local/share/nvim/plugged')
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'liuchengxu/vim-clap'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
"Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' } 
Plug 'easymotion/vim-easymotion'
Plug 'voldikss/vim-floaterm'
"Plug 'codota/tabnine-vim'
"Plug 'amix/vim-zenroom2' { 'on': 'Goyo'}
"Plug 'wakatime/vim-wakatime'
Plug 'github/copilot.vim', { 'for': [ 'python', 'go', 'rust' ] }
Plug 'frazrepo/vim-rainbow'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'psf/black', { 'for': 'python' } 
Plug 'dense-analysis/ale'
Plug 'fisadev/vim-isort', { 'for': 'python' }
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'pechorin/any-jump.vim'
Plug 'jceb/vmux'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'terryma/vim-smooth-scroll'
Plug 'christoomey/vim-tmux-navigator'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
Plug 'neovim/nvim-lspconfig'
Plug 'rhysd/vim-clang-format', { 'for': [ 'C', 'C++' ] }
Plug 'preservim/nerdcommenter'
Plug 'wellle/context.vim'
Plug 'mcchrish/nnn.vim'
Plug 'vv9k/bogster'
Plug 'neoclide/coc.nvim', { 'branch': 'release', 'for': [ 'python', 'go', 'rust' ] }
Plug 'kdheepak/lazygit.nvim'
Plug 'kevinhwang91/rnvimr'
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for': 'python' }
Plug 'ollykel/v-vim', { 'for': [ 'v', 'vlang' ] } 
"Plug 'TaDaa/vimade'
"Plug 'joshdick/onedark.vim'
"Plug 'arcticicestudio/nord-vim'
"Plug 'kaicataldo/material.vim', { 'branch': 'main' }
"Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
"Plug 'ayu-theme/ayu-vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'chrisbra/changesPlugin'
"Plug 'skywind3000/asyncrun.vim'
"Plug 'majutsushi/tagbar'
"Plug 'ryanoasis/vim-devicons'

call plug#end()

"let g:deoplete#enable_at_startup = 1
let g:rainbow_active = 1

set cursorline    " 突出显示当前行
set cursorcolumn  " 突出显示当前列
set showmatch     " 显示括号匹配

set tabstop=4     " 设置Tab长度为4空格
filetype plugin indent on
" set termguicolors  " enable true colors support
highlight Normal guibg=NONE ctermbg=None
nnoremap <F9> :Black<CR>

"set spell

let g:black_fast = 1
let g:black_linelength = 99
let g:black_skip_string_normalization = 0

let g:vim_isort_python_version = 'python3'

" Check Python files with flake8 and pylint.
"let b:ale_linters = ['pylint', 'mypy']
let g:ale_linters = {
      \'*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'python': ['pylint', 'mypy'],
      \ 'go': ['goimports', 'golangci-lint', 'revive', 'gopls', 'go vet', 'go build'],
      \ 'rust': ['rls']
      \}

"let b:ale_linters = ['pylint', 'flake8', 'hacking']
" Fix Python files with autopep8 and yapf.
"let b:ale_fixers = ['black', 'yapf', 'autopep8', 'isort']
let g:ale_fixers = {'python': ['black', 'yapf', 'isort'], 'rustfmt': ['rustfmt']}
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
" let g:ale_sign_warning = ''
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_completion_enabled = 0
let g:ale_completion_autoimport = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 0
let g:ale_lint_delay = 1000
let g:ale_rust_rls_executable = 'rust-analyzer'

"let g:ale_list_window_size = 20
noremap <F2> :Isort <CR>

let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" fzf
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" set color
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

" let g:fzf_action = {
"   \ 'ctrl-t': 'tab split',
"   \ 'ctrl-x': 'split',
"   \ 'ctrl-v': 'vsplit' }

map <c-t> :Rg<space>

" theme
" set termguicolors
syntax enable
" colorscheme onedark

" AerojumpSpace
" nmap <Leader>as <Plug>(AerojumpSpace)
" nmap <Leader>ab <Plug>(AerojumpBolt)
" nmap <Leader>aa <Plug>(AerojumpFromCursorBolt)
" nmap <Leader>ad <Plug>(AerojumpDefault) " Boring mode
nmap qs <Plug>(AerojumpSpace)
nmap qb <Plug>(AerojumpBolt)
nmap qa <Plug>(AerojumpFromCursorBolt)
nmap qd <Plug>(AerojumpDefault) " Boring mode
"nmap <space> <Plug>(AerojumpSpace)

nnoremap <leader>j :AnyJump<CR>
let g:any_jump_search_prefered_engine = 'rg'
let g:any_jump_grouping_enabled = 1
let g:any_jump_preview_lines_count = 5
let g:any_jump_ignored_files = ["tests"]
"let g:any_jump_disable_default_keybindings = 1
"hi Pmenu guibg=#1b1b1b ctermbg=black

" defx
"call defx#custom#option('_', {
"      \ 'winwidth': 30,
"      \ 'split': 'vertical',
"      \ 'direction': 'botright',
"      \ 'show_ignored_files': 0,
"      \ 'buffer_name': '',
"      \ 'toggle': 1,
"      \ 'resume': 1
"      \ })
"noremap <F3> :Defx<CR>

"" let mapleader = '\<space>'
let mapleader='.'
"
"Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'Gray'
let g:limelight_conceal_ctermfg = 240
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
" 包含的前后段的数量
let g:limelight_paragraph_span = 1
" Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
"" Goyo配置
let g:goyo_width = 110
let g:goyo_height = '100%'
let g:goyo_linenr = 0
" 进入goyo模式后自动触发limelight，退出则关闭
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" limelight键盘映射
nmap <silent> <leader>g :Goyo<CR>
xmap <silent> <leader>g :Goyo<CR>
"
"let g:deoplete#enable_at_startup = 1
"
set laststatus=2
let g:lightline = {'colorscheme': 'PaperColor'}
"let g:lightline = { 'colorscheme': 'material_vim' }
" airline_theme
"let g:airline_theme='papercolor'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline_powerline_fonts = 1

let g:ale_python_pylint_options='--disable=missing-docstring,invalid-name,bad-continuation,too-few-public-methods,broad-except'

" theme
"colorscheme PaperColor
"colorscheme nord
let g:material_theme_style = 'palenight'
"colorscheme material

set foldmethod=indent
set nofoldenable

"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
"
let g:rustfmt_autosave = 1

" vim-clap
"let g:clap_theme = 'material_design_dark'
"let g:clap_theme = { 'search_text': {'guifg': 'red', 'ctermfg': 'red'} }
"
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

map <Leader> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" floaterm
let g:floaterm_keymap_new = '<Leader>f'
let g:floaterm_keymap_prev = '<Leader>b'
let g:floaterm_keymap_next = '<Leader>n'
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_keymap_kill = '<Leader>kl'
let g:floaterm_autoclose = 2
let g:floaterm_height = 0.8
let g:floaterm_width = 0.8
let g:floaterm_open_command = 'vsplit'
let g:floaterm_title = '[$1]'
let g:floaterm_wintype = 'float'
hi FloatermNC guibg=gray
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=orange guifg=red
"let g:floaterm_rootmarkers = get(g:, 'floaterm_rootmarkers', ['.project', '.git', '.hg', '.svn', '.root'])
"let g:floaterm_opener = get(g:, 'floaterm_opener', 'split')
"let g:floaterm_autohide = v:false
"let g:floaterm_autoinsert = v:false
"let g:floaterm_position = 'center'
"let g:floaterm_winblend = 10
"nnoremap   <silent>   <F3>    :FloatermNew<CR>
"set wildoptions+=pum

" coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" fzf-preview.vim
nmap <Leader>q [fzf-p]
xmap <Leader>q [fzf-p]

nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> [fzf-p]ga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> [fzf-p]o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]<C-o> :<C-u>CocCommand fzf-preview.Jumps<CR>
nnoremap <silent> [fzf-p]g;    :<C-u>CocCommand fzf-preview.Changes<CR>
nnoremap <silent> [fzf-p]/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
nnoremap <silent> [fzf-p]*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          [fzf-p]gr    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          [fzf-p]gr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]t     :<C-u>CocCommand fzf-preview.BufferTags<CR>
nnoremap <silent> [fzf-p]q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> [fzf-p]l     :<C-u>CocCommand fzf-preview.LocationList<CR>
"<C-d>
"  Preview page down
"<C-u>
"  Preview page up

let g:clang_format#auto_format_on_insert_leave=1

" nerdcommenter config
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCommentEmptyLines = 1
"let g:NERDCompactSexyComs = 1
"let g:NERDDefaultAlign = 'left'
"<leader>cc   加注释
"<leader>cs   批量注释
"<leader>cm   对选中的范围多行注释
"<leader>cs   选中多行注释
"<leader>ca   切换// 与/**/注释方式 
"<leader>cu   解开注释
"<leader>c<space>  加上/解开注释, 智能判断

" vim-go config
let g:go_def_mapping_enabled=0
let g:go_gopls_enabled = 0

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

" context
let g:context_enabled = 1
let g:context_add_mappings = 1
let g:context_add_autocmds = 1
let g:context_border_char = '━'
let g:context_ellipsis_char = '·'

"set background=light
set t_Co=256
"colorscheme PaperColor
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 0.5
  \     }
  \   }
  \ }

" coc-explorer
noremap <F3> :CocCommand explorer <CR>

let g:v_autofmt_bufwritepre = 1

"colorscheme bogster

" setup mapping to call :LazyGit
"nnoremap <silent> <leader>k :LazyGit<CR>
let g:lazygit_use_neovim_remote = 1

nnoremap <silent> <leader>r :RnvimrToggle<CR>
" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1
" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
highlight link RnvimrNormal CursorLine
" Map Rnvimr action
let g:rnvimr_action = {
    \ '<C-t>': 'NvimEdit tabedit',
    \ '<C-x>': 'NvimEdit split',
    \ '<C-v>': 'NvimEdit vsplit',
    \ }
