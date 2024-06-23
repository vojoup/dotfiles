return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      width = 0.55,
    },
    plugins = {
      gitsigns = { enabled = true },
      tmux = { enabled = false }, -- disables the tmux statusline
    },
  },
}
