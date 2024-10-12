-- The reason this is in ~/.config/nvim/lua/nvchad/cmp is because this is the
-- location sourced from
-- ~/.local/share/nvim/lazy/NvChad/lua/nvchad/configs/cmp.lua
-- At the end of the above file is a call to
-- vim.tbl_deep_extend("force", config, require "nvchad.cmp") and this merges
-- the tables in arguments 2 and 3, clobbering keys in the first table in favor
-- of keys defined in the second table.

local cmp = require "cmp"

local options = {
  mapping = {
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = false,
    },
  },

  completion = {
    completeopt = "menu,menuone,noselect",
  },

  preselect = cmp.PreselectMode.None
}

return options
