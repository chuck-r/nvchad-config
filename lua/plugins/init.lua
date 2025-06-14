return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function()
      return require "configs.cmp"
    end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "cpp",
        "llvm", "cmake", "make"
      },

      auto_install = true
    },
  },

  {
    "meznaric/key-analyzer.nvim",
    lazy = false,
    opts = {}
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },
}
