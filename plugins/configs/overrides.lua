local M = {}

M.mason = {
  ensure_installed = {
    'lua-language-server',
    'vim-language-server',
    'stylua',
    'css-lsp',
    'html-lsp',
    'prettier',
    'tailwindcss-language-server',
    'json-lsp',
    'typescript-language-server',
    'eslint-lsp',
  }
}

M.nvimtree = {
  view = {
    adaptive_size = false,
    centralize_selection = true,
    side = "left",
    width = 30,
    hide_root_folder = false,
  },
  renderer = {
    indent_width = 1,
  },
}

M.treesitter = {
  autotag = {
    enable = true,
  },
}

return M
