-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
	-- colorscheme
	use 'ellisonleao/gruvbox.nvim'

	-- to manage lsp services
	use 'williamboman/mason.nvim'    
	use 'williamboman/mason-lspconfig.nvim'
	
	use 'neovim/nvim-lspconfig'
	use 'simrat39/rust-tools.nvim'

	-- Completion framework:
	use 'hrsh7th/nvim-cmp' 

	-- LSP completion source:
	use 'hrsh7th/cmp-nvim-lsp'

	-- Useful completion sources:
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                              
	use 'hrsh7th/cmp-buffer'                            
	use 'hrsh7th/vim-vsnip'                             

	-- indent blankline 
	use "lukas-reineke/indent-blankline.nvim"
	-- treesitter 
	use 'nvim-treesitter/nvim-treesitter'

	-- rainbow treesitter plugin
	use 'p00f/nvim-ts-rainbow' 	
	
	-- tree , neotree
	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
    			'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	use {
    		'numToStr/Comment.nvim',
    		config = function()
        		require('Comment').setup()
    		end
	}

	-- changing vim-surround
	-- quick view cs <oldvalue> <newvalue>
	-- also works with rs remove surreanding
	use 'tpope/vim-surround'


	use {
		"windwp/nvim-autopairs",
    		config = function() 
			require("nvim-autopairs").setup {}
		end
		--config = function() require("autopairs").setup {}
		--end

		
	}

	-- vimspector + codelldb for debugging
	-- requires vim compiled with python3
	-- use 'puremourning/vimspector'
	
	-- other plugin
end)
