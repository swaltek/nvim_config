require('lspconfig').ccls.setup{}

local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  suggest_lsp_servers = false,
})

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
-- lsp.setup_servers()

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.configure('clangd', {
	on_attach = function(client, bufnr)
		print('hello clangd')
	end,
})

lsp.setup()

local cmp = require('cmp')
local cmp_config = lsp.defaults.cmp_config({
	window = {
		completion = cmp.config.window.bordered()
	},
	completion = {
		autocomplete = false 
	}
})
cmp.setup(cmp_config)
