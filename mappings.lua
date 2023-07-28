---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["J"] = { "mzJ`z", "Append next line to current" },
    ["<leader><C-k>"] = { "<cmd>cnext<CR>zz", "Next quickfix" },
    ["<leader><C-j>"] = { "<cmd>cprev<CR>zz", "Prev quickfix" },
    ["<leader>k"] = { "<cmd>lnext<CR>zz", "Next location" },
    ["<leader>j"] = { "<cmd>lprev<CR>zz", "Prev location" },
    ["<leader>s"] = {
      [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
      "Replace occurrences of current word",
    },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line(s) down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move line(s) up" },
  },
  x = {
    ["<leader>p"] = { '"_dP', "Paste and replace" },
  },
}

-- more keybinds!

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint curr line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require("dap.ui.widgets")
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "Update crates",
    },
  },
}

return M
