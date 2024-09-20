return {
  "neovim/nvim-lspconfig",
  config = function()
    require("nvchad.configs.lspconfig").defaults()

    local on_attach = require("nvchad.configs.lspconfig").on_attach
    local on_init = require("nvchad.configs.lspconfig").on_init
    local capabilities = require("nvchad.configs.lspconfig").capabilities

    local lspconfig = require "lspconfig"
    local servers = { "eslint", "tailwindcss", "ts_ls" }

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
      local init_options = {}

      if lsp == "ts_ls" then
        commands = {
          OrganizeImports = {
            organize_imports,
            description = "Organize Imports",
          },
        }
        init_options = {
          preferences = {
            importModuleSpecifierPreference = "non-relative",
          },
        }
      end

      lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        commands = commands,
        init_options = init_options,
      }
    end
  end,
  keys = {
    { "<leader>co", "<cmd>OrganizeImports<cr>", desc = "Organize Imports" },
  },
}
