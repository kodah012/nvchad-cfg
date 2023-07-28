local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.opt.colorcolumn = "80"
vim.wo.relativenumber = true

autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.wgsl" },
  command = "set filetype=wgsl",
})
