-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.colorscheme = "everforest"

local lspconfig = require 'lspconfig'
local opts = {}

require("lvim.lsp.manager").setup("rust_analyzer", opts)
-- local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
-- ft_to_parser.mdx = "markdown"
vim.treesitter.language.register("markdown", "mdx")

vim.opt.wrap = true
vim.opt.linebreak = true
vim.filetype.add({
  extension = {
    mdx = 'mdx'
  }
})

lvim.builtin.telescope.defaults.initial_mode = "insert"
lvim.transparent_window = true
lvim.format_on_save.enabled = true
lvim.lsp.document_highlight = true
lvim.lsp.automatic_configuration.skipped_servers = { "rust_analyzer" }

lspconfig.tsserver.setup {
  on_attach = require 'lvim.lsp'.common_on_attach,
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "astro", },
  cmd = { "typescript-language-server", "--stdio" }
}

lspconfig.astro.setup {
  on_attach = require 'lvim.lsp'.common_on_attach,
}

lspconfig.svelte.setup {
  on_attach = require 'lvim.lsp'.common_on_attach,
}

lvim.plugins = {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
      })
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
}
