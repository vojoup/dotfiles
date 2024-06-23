local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>?",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Find Recently open files",
    },
    -- change a keymap
    {
      "<leader>/",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
          winblend = 10,
          previewer = false,
        }))
      end,
      desc = "Find in buffer",
    },
    {
      "<leader>sr",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume last search",
    },
    {
      "<leader>sr",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume last search",
    },
    { "<leader>ff", Util.telescope("git_files"), desc = "Find Files (git files)" },
    { "<leader>fF", Util.telescope("files"), desc = "Find Files (within current root)" },
    {
      "<leader>ss",
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      desc = "Find Files (within current root)",
    },
  },
}
