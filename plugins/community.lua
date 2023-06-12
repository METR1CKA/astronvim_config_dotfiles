return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- bars-and-lines
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },

  -- Indent
  { import = "astrocommunity.indent.mini-indentscope" },
  -- { import = "astrocommunity.indent.indent-blankline-nvim" },

  -- Syntax
  { import = "astrocommunity.syntax.hlargs-nvim" },

  -- themes
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.colorscheme.vscode-nvim" },
}
