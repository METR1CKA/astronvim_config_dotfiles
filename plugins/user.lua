return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  -- TODO plugin
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },

  -- themes config

  -- Monokai-Pro
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup {
        transparent_background = false,
        terminal_colors = true,
        devicons = true,
        filter = "classic",
        styles = {
          comment = { italic = true },
          keyword = { italic = true },
          type = { italic = true },
          storageclass = { italic = true },
          structure = { italic = true },
          parameter = { italic = true },
          annotation = { italic = true },
          tag_attribute = { italic = true },
        },
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
          },
          indent_blankline = {
            context_highlight = "default", -- default | pro
            context_start_underline = false,
          },
        },
      }
    end,
  },

  -- OneDarkPro
  {
    "olimorris/onedarkpro.nvim",
    config = function()
      require("onedarkpro").setup {
        styles = {
          types = "NONE",
          methods = "NONE",
          numbers = "NONE",
          strings = "NONE",
          comments = "italic",
          keywords = "bold,italic",
          constants = "NONE",
          functions = "italic",
          operators = "NONE",
          variables = "NONE",
          parameters = "NONE",
          conditionals = "italic",
          virtual_text = "NONE",
        },
        highlights = {
          Comment = { italic = true },
          Directory = { bold = true },
          ErrorMsg = { italic = true, bold = true },
        },
      }
    end,
  },

  -- VsCode
  {
    "Mofiqul/vscode.nvim",
    config = function()
      require("vscode").setup {
        italic_comments = true,
      }
    end,
  },

  -- Bars And Lines

  -- BufferLine
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup {
        options = {
          mode = "buffers",
          themable = true,
          diagnostics = "nvim_lsp",
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match "error" and " " or " "
            return " " .. icon .. count
          end,
          buffer_close_icon = "󰅖",
          modified_icon = "●",
          close_icon = "",
          left_trunc_marker = "",
          right_trunc_marker = "",
          separator_style = "slant",
          hover = {
            enabled = true,
            delay = 100,
            reveal = { "close" },
          },
        },
      }
    end,
  },

  -- Indent

  -- Indent Blankline
  {
    -- "lukas-reineke/indent-blankline.nvim",
    -- config = function()
    --   vim.opt.list = true
    --
    --   require("indent_blankline").setup {
    --     space_char_blankline = " ",
    --     show_current_context = true,
    --     show_current_context_start = true,
    --   }
    -- end,
  },

  -- Syntax

  -- Hlargs nvim
  {
    "m-demare/hlargs.nvim",
    config = function()
      require("hlargs").setup {}
      require("hlargs").enable()
    end,
  },
}
