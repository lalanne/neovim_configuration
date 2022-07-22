-- General config
vim.o.relativenumber = true
vim.o.number = true
vim.opt['ruler'] = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.opt['smarttab'] = true
vim.opt['expandtab'] = true
vim.opt['smartindent'] = true
vim.opt['autoindent'] = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.opt['autoread'] = true
vim.opt['title'] = true
vim.o.termguicolors = true
vim.opt['hlsearch'] = true
vim.opt['hidden'] = true
vim.opt['encoding'] = 'utf-8'
vim.opt['fileencoding'] = 'utf-8'
vim.opt['showmode'] = false
vim.opt['clipboard'] = 'unnamedplus'
vim.opt['swapfile'] = false
vim.opt['colorcolumn'] = '90'
vim.o.ignorecase = true
vim.o.lazyredraw = true
-- Persistent undo
-- mkdir $HOME/.vim/undo
vim.opt['undofile'] = true
vim.opt['undodir'] = os.getenv( 'HOME' )..'/.cache/nvim/undo'
vim.opt['undolevels'] = 1000
vim.opt['undoreload'] = 10000

-- Stop comments on newline
vim.cmd([[autocmd BufWinEnter * :set formatoptions-=c formatoptions-=r formatoptions-=o]])

vim.cmd('command CDD cd %:p:h')

