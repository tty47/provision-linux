local keymap = function(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

------------------------------------------------------------------
vim.g.mapleader = ' '
------------------------------------------------------------------
-- Options
keymap('n', '<leader>w', ':w<cr>')
keymap('n', '<leader>pv', ':Ex<cr>')
-- clean search: https://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting
keymap('n', '<leader>l', ':noh<cr>')

-- find and replace -- auto add command
keymap('n', '<leader>fr', ':%s/')

------------------------------------------------------------------
keymap('n', '<leader>tv', ':botright vnew <Bar> :terminal<cr>')
keymap('n', '<leader>th', ':botright new <Bar> :terminal<cr>')
keymap('t', '<Esc>', '<C-\\><C-n>')

------------------------------------------------------------------
-- Save ctr+s
keymap('n', '<C-s>', ':w<cr>')
keymap('i', '<C-s>', '<Esc>:w<CR>a')

------------------------------------------------------------------
keymap('n', '<C-j>', '<C-W>j')
keymap('n', '<C-k>', '<C-W>k')
keymap('n', '<C-h>', '<C-W>h')
keymap('n', '<C-l>', '<C-W>l')

------------------------------------------------------------------
-- NERDTree
-- keymap('n', '<leader>d', ':NvimTreeToggle<cr>')
-- keymap('n', '<C-n>', ':NERDTree<cr>')
keymap('n', '<leader>n', ':NERDTreeFocus<cr>')
keymap('n', '<C-b>', ':NERDTreeToggle<cr>')
keymap('n', '<C-f>', ':NERDTreeFind<CR>')

------------------------------------------------------------------
-- Telescope
keymap('n', '<leader>ff', ':Telescope find_files<cr>')
keymap('n', '<leader>s', ':Telescope live_grep<cr>')

------------------------------------------------------------------
-- Tabs
keymap('n', '<C-j>', ':tabprevious<cr>')
keymap('n', '<C-n>', ':tabnext<cr>')

------------------------------------------------------------------
-- Reload Config
keymap('n', '<leader>r', ':source $MYVIMRC<cr>')

------------------------------------------------------------------
-- Ntree
keymap('n', '<leader>nt', ':Ntree<cr>')

------------------------------------------------------------------
-- Resize
keymap('n', '<leader>+', ':vertical resize +5<cr>')
keymap('n', '<leader>-', ':vertical resize -5<cr>')

keymap('n', '<leader>rp', ':resize 100<cr>')
------------------------------------------------------------------
-- Move
vim.keymap.set("n", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "K", ":m '<-2<CR>gv=gv")


-- Vertical
keymap('n', '<C-d>', '<C-d>zz') -- zz -> centers the screen
keymap('n', '<C-u>', '<C-u>zz') -- zz -> centers the screen

------------------------------------------------------------------
-- COC
-- Commented due to plugin disabled
-- vim.cmd([[ inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" ]])
