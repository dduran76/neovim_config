local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

local win = require('lspconfig.ui.windows')
local _default_opts = win.default_opts

win.default_opts = function(options)
  local opts = _default_opts(options)
  opts.border = 'rounded'
  return opts
end

require "user.lsp.lsp-signature"
-- require("user.lsp.lsp-installer")
require("user.lsp.mason")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
-- require("nvim-lsp-installer").setup {}
