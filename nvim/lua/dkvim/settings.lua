vim.o.exrc = true -- Auto source vimrc
vim.o.hidden = true -- Required to keep multiple buffers open
vim.o.errorbells = false -- I don't feel like going insane
vim.o.wrap = false -- Disable wrapping
vim.o.encoding = 'UTF-8' --
vim.o.fileencoding = 'UTF-8' --
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.ruler = true -- Show cursor position at all times
vim.o.cmdheight = 1 -- More space for displaying messages
vim.o.mouse = 'a' -- Enable mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be right
vim.o.conceallevel = 2 -- Show backticks in Markdown
vim.o.tabstop = 2 -- Use 2 spaces for indentation
vim.o.softtabstop = 2 -- Use 2 spaces for indentation
vim.o.shiftwidth = 2 -- Use 2 spaces for indentation
vim.o.expandtab = true -- Replace tabs with spaces
vim.o.smarttab = true -- Smarter tabs
vim.o.smartindent = true -- Smarter indentation
vim.o.autoindent = true -- Good auto indent
vim.o.ignorecase = true --
vim.o.laststatus = 2 -- Always display the status line
vim.o.number = true -- Show line numbers
vim.o.relativenumber = true -- Show relative line numbers
vim.o.cursorline = true -- Highlight the current line
vim.o.backup = false -- No backup files
vim.o.swapfile = false -- No swap files
vim.o.writebackup = false -- No backup files
vim.o.updatetime = 50 -- Higher updatetime leads to delays and a poor user experience
vim.o.timeoutlen = 500 -- Faster which-key popups
vim.o.hlsearch = false -- Don't keep search results highlighed
vim.o.incsearch = true -- Highlight search results
vim.o.scrolloff = 5 -- Keeps the cursor more centered during scrolling
vim.o.signcolumn = 'yes' -- Useful for LSP and Git plugins
vim.o.colorcolumn = '80'
vim.o.ff = 'unix' -- Unix file endings for consistency
vim.o.completeopt = 'menu,menuone,noselect' -- Required for nvim-cmp
vim.o.termguicolors = true -- 256 colors!
vim.o.showtabline = 0 -- Don't show the tabline, I personally don't use it
vim.o.bg = 'dark' -- Set a dark background

vim.cmd([[
autocmd ColorScheme * hi Normal guibg=0 ctermbg=0
autocmd FileType * set formatoptions-=cro
autocmd FileType * setlocal formatoptions-=cro
]])
