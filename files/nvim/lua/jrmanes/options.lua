-- options.lua
vim.cmd("autocmd!")

vim.g.mapleader = " "

vim.opt.shell = os.getenv("SHELL")
-- vim.opt.shell = 'zsh'

-- Basic settings
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.backspace = { 'start', 'eol', 'indent' } -- backspace works on every char in insert mode
vim.opt.completeopt = 'menuone,noselect'
-- vim.opt.history = 100000

vim.wo.number = true
vim.opt.relativenumber = true

vim.opt.colorcolumn = "80"
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.backup = false
vim.opt.showcmd = true

vim.opt.list = true -- display white characters
vim.opt.foldenable = false
vim.opt.foldlevel = 4 -- limit folding to 4 levels
vim.opt.foldmethod = 'syntax' -- use language syntax to generate folds
vim.opt.wrap = false -- No Wrap lines
vim.opt.eol = false -- show if there's no eol char
vim.opt.showbreak= '↪' -- character to show when line is broken

-- Display
vim.opt.showmatch  = true -- show matching brackets
vim.opt.scrolloff = 3 -- always show 3 rows from edge of the screen
vim.opt.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vim.opt.laststatus = 2 -- always show status line
vim.opt.cmdheight = 1 -- Give more space for displaying messages.

vim.opt.backupskip = { '/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smartcase = true -- case insentive unless capitals used in search
vim.opt.smarttab = true
vim.opt.breakindent = true

-- Indentation using spaces
vim.opt.tabstop = 4 -- tabstop:	width of tab character
vim.opt.softtabstop = 4 -- softtabstop:	fine tunes the amount of whitespace to be added
vim.opt.shiftwidth = 4 -- shiftwidth:	determines the amount of whitespace to add in normal mode
vim.opt.textwidth = 79  -- textwidth:	text wrap width
vim.opt.expandtab = true -- autoindent:	autoindent in new line

vim.opt.tabstop = 4

vim.opt.wrap = false -- No Wrap lines
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Spaces as dots
-- vim.cmd[[set listchars=eol:↓,tab:\ \ ┊,trail:●,extends:…,precedes:…,space:·]])
-- vim.cmd[[set listchars=eol:⏎,tab:\ \ ┊,trail:●,extends:…,precedes:…,space:·]]
vim.cmd[[set listchars=eol:¬,tab:\ \ ┊,trail:●,extends:…,precedes:…,space:·]]
-- vim.cmd[[set listchars=eol:¬,tab:\ \ ┊,trail:●,extends:…,precedes:…]]

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

-- Commands mode
vim.o.wildmenu = true -- on TAB, complete options for system command
vim.o.wildignore = 'deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc'

---------------------------------------------------------------------
-- Set
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamed' -- Copy from vim to system
vim.opt.nu = true
vim.opt.errorbells = false
-- window-scoped
vim.opt.cursorline = true
-- global scope
vim.opt.autowrite = true
-- -- --
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.isfname:append("@-@")
-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50
-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

--------------------------------------------------------------------- 
-- Only show cursorline in the current window and in normal mode.
vim.cmd([[
  augroup cline
      au!
      au WinLeave * set nocursorline
      au WinEnter * set cursorline
      au InsertEnter * set nocursorline
      au InsertLeave * set cursorline
  augroup END
]])
