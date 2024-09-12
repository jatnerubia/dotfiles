return {
  "stevearc/conform.nvim",
  event = { "BufNewFile", "BufReadPre" },
  config = function()
    require("conform").setup {
      formatters_by_ft = {
        lua = { "stylua" },
        html = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    }
  end,
}
