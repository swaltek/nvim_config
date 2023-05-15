vim.cmd('colorscheme tokyonight-moon')
local light_mode = false;
function ToggleLight()
	light_mode = not light_mode;
	if light_mode then
		vim.cmd('colorscheme tokyonight-day')
	else
		vim.cmd('colorscheme tokyonight-moon')
	end
end
