-- it goes only if neovide is the editor

if (vim.g.neovide ~= nil) then
	-- settings for the fontsize and function to change fontsize on the fly
	vim.g.gui_font_default_size = 7
	vim.g.gui_font_size = vim.g.gui_font_default_size
	vim.g.gui_font_face = "Fira Code"
	RefreshGuiFont = function()
  		vim.opt.guifont = string.format("%s:h%s",vim.g.gui_font_face, vim.g.gui_font_size)
	end

	ResizeGuiFont = function(delta)
  		vim.g.gui_font_size = vim.g.gui_font_size + delta
		RefreshGuiFont()
	end

	ResetGuiFont = function()
  		vim.g.gui_font_size = vim.g.gui_font_default_size
  		RefreshGuiFont()
	end

	-- Call function on startup to set default value
	ResetGuiFont()

	-- Keymaps

	local opts = { noremap = true, silent = true }

	vim.keymap.set({'n', 'i'}, "<C-+>", function() ResizeGuiFont(1)  end, opts)
	vim.keymap.set({'n', 'i'}, "<C-->", function() ResizeGuiFont(-1) end, opts)

	-- transparency
	vim.g.neovide_transparency = 0.9
	
	-- particles
	vim.g.neovide_cursor_vfx_mode = "railgun"
	vim.g.neovide_cursor_vfx_particle_density = 13.0
	vim.g.neovide_cursor_vfx_particle_curl = 0.3
	vim.g.neovide_cursor_vfx_particle_lifetime = 1.7
	vim.g.neovide_cursor_vfx_particle_phase = 1.7

end	
