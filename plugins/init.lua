local overrides = require "custom.plugins.configs.overrides"

return {
  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
    config =function ()
      require "plugins.configs.alpha"
    end
  },

  ["neovim/nvim-lspconfig"] = {
    config =function ()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    overrides_options = overrides.treesitter,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },

  ["rmagatti/auto-session"] = {
    config = function()
      require("auto-session").setup {
        log_level = "error",
        cwd_change_handling = {
          post_cwd_changed_hook = function()
            require("lualine").refresh()
          end,
        },
        pre_save_cmds = {"NvimTreeClose"},
        post_restore_cmds = {"NvimTreeToggle"}
      }
    end,
  },
}
