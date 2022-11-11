local packer = require('packer')

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function()
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  --  lua functions
  use 'nvim-lua/plenary.nvim'
    
  -- LSP 
  use 'williamboman/mason.nvim' -- manage LSP servers
  use 'neovim/nvim-lspconfig' -- enable LSP
  use 'williamboman/mason-lspconfig.nvim'

  -- cmp plugins
  use 'hrsh7th/nvim-cmp' -- completion plugin
  use 'hrsh7th/cmp-buffer' -- buffer completions
  use 'hrsh7th/cmp-path' -- path completions
  use 'hrsh7th/cmp-cmdline' -- cmdline completions
  use 'saadparwaiz1/cmp_luasnip' -- snippet completions
  use 'hrsh7th/cmp-nvim-lsp' -- lsp completions
  use('onsails/lspkind-nvim') -- icons completions

  -- snippets
  use 'L3MON4D3/LuaSnip' -- snippet engine
  
  -- LaTex
  use 'lervag/vimtex'

  -- Telescope
  use { 
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    config = function()
      require("telescope").setup{}
    end
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate"
  }

  -- commenting
  use {
    'terrortylor/nvim-comment',
    config = function ()
      require('nvim_comment').setup()
    end
  }

  -- replace for UI messages
  -- use({
  --   "folke/noice.nvim",
  --   config = function()
  --     require("noice").setup()
  --   end,
  --   requires = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     "rcarriga/nvim-notify",
  --     }
  -- })

	-- colorschemes
  use 'ellisonleao/gruvbox.nvim'
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/sonokai'

  -- tabline
  use {
    'romgrk/barbar.nvim',
  }

  -- auto-save
  use({
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {
        -- your config goes here
        -- or just leave it empty :)
        }
      end,
    })

  -- statusline 
  -- use 'feline-nvim/feline.nvim' -- feline
  use 'nvim-lualine/lualine.nvim' -- lualine

  -- nvim-tree
  use 'nvim-tree/nvim-web-devicons'
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons},
          tag = 'nightly' -- optional, updated every week. (see issue #1193)
      }
  }

  -- auto-closing brackets
  use {
      'windwp/nvim-autopairs',
      config = function()
          require("nvim-autopairs").setup()
      end
  }
  -- rainbow parentheses
  use 'p00f/nvim-ts-rainbow'

  -- indents
  use { 
    "lukas-reineke/indent-blankline.nvim",
  }

  -- show context
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }

  -- lua filetypes
  use 'nathom/filetype.nvim'

  -- pretty diagnostic messages
  use {
    'folke/trouble.nvim',
    config = function ()
      require('trouble').setup{}      
    end
  }

end)
