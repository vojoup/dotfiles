return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "cmake",
        -- "comment", -- comments are slowing down TS bigtime, so disable for now
        "css",
        "gitcommit",
        "gitignore",
        "go",
        "http",
        "svelte",
      })
    end,
  },
}
