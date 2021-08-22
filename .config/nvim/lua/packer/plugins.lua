local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig';
  use 'kabouzeid/nvim-lspinstall';

  use 'tpope/vim-commentary';
  use 'tpope/vim-surround';
  use 'tpope/vim-repeat';
  -- use 'kyazdani42/nvim-web-devicons';

  use 'mhinz/vim-startify';

  use {
    'hrsh7th/nvim-compe',
    opt = true,
    event = 'InsertEnter',
    config = function() require('packer.compe') end,
    wants = 'LuaSnip',
    requires = {
      {
        'L3MON4D3/LuaSnip',
        wants = 'friendly-snippets',
        event = "InsertCharPre",
        config = function() require('packer.luasnip') end,
        requires = {
          'rafamadriz/friendly-snippets',
          event = 'InsertCharPre',
        },
      },
    },
  };

  use {
    'RishabhRD/nvim-cheat.sh',
    opt = true,
    requires = {{'RishabhRD/popfix', opt = true}},
    cmd = {'Cheat'}
  };

  use {
    'nvim-treesitter/nvim-treesitter',
    opt = true,
    event = 'BufRead',
    config = function() require('packer.treesitter') end
  };

  use {
    'glepnir/zephyr-nvim',
    opt=true,
    config = function() vim.g.colorscheme = 'zephyr' end
  };

  use {
    'yorik1984/newpaper.nvim'
  };

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require('packer.telescope') end,
    extensions = {
    }
  }

  use {
    'romgrk/barbar.nvim',
    opt = true,
    keys = {'n', '<leader>b'}
  }

  use {
    'kyazdani42/nvim-tree.lua',
    opt=true,
    cmd = {'NvimTreeToggle'},
    config = function() require('packer.nvim-tree') end,
  }
end)
