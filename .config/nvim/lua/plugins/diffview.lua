return {
  "sindrets/diffview.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("diffview").setup {
      view = {
        merge_tool = {
          layout = "diff3_mixed",
        },
      },
    }
  end,
  keys = {
    {
      "<leader>gdo",
      "<cmd>DiffviewOpen<cr>",
      desc = "Diffview Open",
    },
    {
      "<leader>gdc",
      "<cmd>DiffviewClose<cr>",
      desc = "Diffview Close",
    },
  },
}
