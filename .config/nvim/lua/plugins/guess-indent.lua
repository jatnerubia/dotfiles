return {
  "nmac427/guess-indent.nvim",
  event = { "BufNewFile", "BufReadPre" },
  config = function()
    require("guess-indent").setup()
  end,
}
