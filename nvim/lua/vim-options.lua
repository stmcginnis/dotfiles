-- Options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.mouse = "a"
vim.opt.errorbells = false
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "/tmp/.nvim/undodir"   -- set a undodir
vim.opt.undofile = true                  -- set an undofile
vim.opt.scrolloff = 8                    -- scroll offwidth so it's not the bottom
vim.opt.colorcolumn = "80,120"           -- bar at 80 and 120 chars
vim.opt.signcolumn = "auto"              -- set the bar color column always
vim.opt.compatible = false               -- no vi compatibility
vim.opt.smartindent = true
vim.opt.splitbelow = true                -- automagically split going down
vim.opt.splitright = true                -- automagically split going right
vim.opt.list = true
vim.opt.updatetime=100

-- Various keymappings
vim.keymap.set('n', '<leader>d', ":bd<CR>", {}) -- close current buffer

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
