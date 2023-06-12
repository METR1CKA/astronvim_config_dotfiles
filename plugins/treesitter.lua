return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "bash",
      "typescript",
      "javascript",
      "css",
      "html",
      "git_config",
      "git_rebase",
      "gitignore",
      "gitattributes",
      "gitcommit",
      "graphql",
      "json",
      "latex",
      "markdown",
      "php",
      "python",
      "ruby",
      "scss",
      "sql",
      "vim",
      "vue",
      "yaml",
    })
  end,
}
