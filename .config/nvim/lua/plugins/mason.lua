return {
    -- MASON
    {
        "mason-org/mason-lspconfig.nvim", opts = { ensure_installed = {"rust_analyzer", "gopls","pyright", "lua_ls"}, },
        dependencies = {
            { "mason-org/mason.nvim", opts = {
                ui = {
                    icons = {
                        package_installed = " ",
                        package_pending = " ",
                        package_uninstalled = " "
                    }
                }
            }},
            "neovim/nvim-lspconfig",
        },
    },
--- LuaSnip
    {
        'L3MON4D3/LuaSnip', dependencies = {'rafamadriz/friendly-snippets'}
    },
--- CMP
    {
        'hrsh7th/nvim-cmp', config = function()
            require("luasnip.loaders.from_vscode").lazy_load() --Load friendly-snippets
            local lspconfig = require("lspconfig")
            local cmp = require'cmp'
            cmp.setup({
                snippet = {
                  --REQUIRED you must specify a snippet engine
                  expand = function(args)
                    require('luasnip').lsp_expand(args.body) --For `luasnip` users.
                  end,
                },
                window = {
                  --completion = cmp.config.window.bordered(),
                  --documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                  ['<C-f>'] = cmp.mapping.scroll_docs(4),
                  ['<C-Space>'] = cmp.mapping.complete(),
                  ['<C-e>'] = cmp.mapping.abort(),
                  ['<CR>'] = cmp.mapping.confirm({ select = true }), --Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                  { name = 'nvim_lsp' },
                  { name = 'luasnip' }, --For luasnip users.
                }, {
                  { name = 'buffer' },
                })
            })
            local capabilities = require('cmp_nvim_lsp').default_capabilities() --Set up lspconfig
        end,
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip'
        }
    }
}
