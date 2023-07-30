local options = {
  on_attach = function(_, bufnr)
    local rt = require("rust-tools")
    -- Hover actions
    vim.keymap.set(
      "n",
      "<C-space>",
      rt.hover_actions.hover_actions,
      { buffer = bufnr }
    )
    vim.keymap.set(
      "n",
      "<leader>a",
      rt.code_action_group.code_action_group,
      { buffer = bufnr }
    )
  end,
  server = {
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          enable = true,
          command = "clippy",
        },
        cargo = {
          allFeatures = true,
        },
      },
    },
  },
}

return options
