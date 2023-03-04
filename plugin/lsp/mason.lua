-- safely import mason 
local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

-- safely import mason-lspconfig 
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

mason.setup()

-- ensure installation of lsps for:
-- python
-- R
mason_lspconfig.setup({
  ensure_installed = {
    "pyright",
    "r_language_server"
  }
})