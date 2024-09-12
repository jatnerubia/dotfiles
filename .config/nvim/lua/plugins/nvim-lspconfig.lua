return {
  "neovim/nvim-lspconfig",
  config = function()
    require("nvchad.configs.lspconfig").defaults()

    local on_attach = require("nvchad.configs.lspconfig").on_attach
    local on_init = require("nvchad.configs.lspconfig").on_init
    local capabilities = require("nvchad.configs.lspconfig").capabilities

    local lspconfig = require "lspconfig"
    local servers = { "eslint", "tailwindcss", "tsserver" }

    local function organize_imports()
      local params = {
        command = "_typescript.organizeImports",
        arguments = { vim.api.nvim_buf_get_name(0) },
        title = "",
      }
      vim.lsp.buf.execute_command(params)
    end

    for _, lsp in ipairs(servers) do
      local commands = {}

      if lsp == "tsserver" then
        commands = {
          OrganizeImports = {
            organize_imports,
            description = "Organize Imports",
          },
        }
      end

      lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        commands = commands,
      }
    end
  end,
  keys = {
    { "<leader>co", "<cmd>OrganizeImports<cr>", desc = "Organize Imports" },
  },
}
