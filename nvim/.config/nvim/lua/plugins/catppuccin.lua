return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,  -- Ensures it loads first
  config = function()
    require("catppuccin").setup({
      transparent_background = true, -- Enable transparency
      integrations = {
        nvimtree = { transparent_panel = true },
        telescope = true,
        mason = true,
      }
    })
    vim.cmd.colorscheme "catppuccin"
  end,
}

