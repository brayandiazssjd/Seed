return {
	-- Autopairs
	{
		"windwp/nvim-autopairs",
	},

	-- bufferline
	{
    'akinsho/bufferline.nvim',
		dependencies = {
    'nvim-tree/nvim-web-devicons'
    },
  },

	-- Colorscheme
	{
		"sainnhe/everforest",
	},
	{
		"sainnhe/gruvbox-material",
	},
	{
		"folke/tokyonight.nvim",
	},
	{
		"maxmx03/solarized.nvim",
	},
	{
		"catppuccin/nvim",
	},
	{
		"rebelot/kanagawa.nvim",
	},
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
  {
    "rose-pine/neovim",
  },
  {
    "shaunsingh/nord.nvim",
  },
  {
    "loctvl842/monokai-pro.nvim",
  },
  {
    "tanvirtin/monokai.nvim",
  },
	{
		"cocopon/iceberg.vim",
	},

	--[[ Hop (Better Navigation)
    {
        "phaazon/hop.nvim",
        lazy = true,
    },
	
		]]-- Lualine 
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
    },
	-- Language Support
	-- Added this plugin.
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },                 -- Required
			{ 'williamboman/mason.nvim' },               -- Optional
			{ 'williamboman/mason-lspconfig.nvim' },     -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },             -- Required
			{ 'hrsh7th/cmp-nvim-lsp' },         -- Required
			{ 'hrsh7th/cmp-buffer' },           -- Optional
			{ 'hrsh7th/cmp-path' },             -- Optional
			{ 'saadparwaiz1/cmp_luasnip' },     -- Optional
			{ 'hrsh7th/cmp-nvim-lua' },         -- Optional

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },                 -- Required
			{ 'rafamadriz/friendly-snippets' },     -- Optional
		},
		enabled = true,
	},


	-- Nvimtree (File Explorer)
	{
		'nvim-tree/nvim-tree.lua',
		lazy = true,
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
	},

	-- Toggle Term
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = true
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
	},

	-- Which-key
	{
		'folke/which-key.nvim',
		lazy = true,
	},

}
