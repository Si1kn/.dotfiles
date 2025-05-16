vim.cmd.colorscheme "catppuccin"
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>w', '<C-w>w', { noremap = true, silent = true })




-- Vertical split terminal
vim.keymap.set('n', 'tt', ':vsplit | terminal<CR>', {desc = '[T]erminal [V]ertical'})

-- Horizontal split terminal
--vim.keymap.set('n', '<leader>', ':split | terminal<CR>i', {desc = '[T]erminal [H]orizontal'})

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { noremap = true })


vim.keymap.set('i', '<leader>c', function()
   vim.lsp.buf.code_action()
end, {desc = 'Code actions (insert mode)'})



vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })


vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format({ async = true })
end, { desc = '[F]ormat file' })

vim.opt.number = true       -- Show line numbers
vim.opt.relativenumber = false -- Disable relative numbers

vim.api.nvim_create_augroup("FileCreation", { clear = true })
vim.api.nvim_create_autocmd("BufNewFile", {
  group = "FileCreation",
  pattern = "*",
  callback = function()
    vim.api.nvim_put({ "/*"  }, "l", true, true)
    vim.api.nvim_put({ "* Author: Silas"}, "l", true, true)
    vim.api.nvim_put({ "* File name: " .. vim.fn.expand('%:t') }, "l", true, true)
    vim.api.nvim_put({ "* Created on: " .. os.date() }, "l", true, true)
    vim.api.nvim_put({ "*/" }, "l", true, true)
  end,
})
