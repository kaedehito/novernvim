return {
  {
    "https://git.sr.ht/~havi/telescope-toggleterm.nvim",
    event = "TermOpen",
    dependencies = {
      "akinsho/nvim-toggleterm.lua",
      "nvim-telescope/telescope.nvim",
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("toggleterm")
    end,
  },
}

