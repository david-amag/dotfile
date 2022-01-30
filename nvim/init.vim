" Neovim Configuration : David Johannesson
" Install plugins
lua require("plugins")
" Pluging configuration
lua require("files.colorscheme")
lua require("files.lsp")
lua require("files.lsp_jedi")
lua require("files.lsp_clanged")
lua require("files.statusline")
lua require("files.completions")

set nocompatible
syntax on
set number
set modelines=0

set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartcase
set nobackup
set noswapfile
set wildmenu
set wildmode=list:longest

set wrap
set textwidth=80
set expandtab
set backspace=indent,eol,start

set backspace=indent,eol,start
set showmatch

imap qq <Esc>

"" Snippets
" NOTE: You can use other key to expand snippet.

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.pythontype = ['python']
let g:vsnip_filetypes.cpptype = ['cpp']
