-- Plugins related to the language server protocol
return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/nvim-cmp',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
    },
    config = function()
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(event)
                local map_key = function(keys, function, description)
                    vim.keymap.set('n', '<leader>' .. keys, function, {
                        buffer = event.buf,
                        desc = 'LSP: ' .. description
                    })
                end

                local telescope_builtins = require('telescope.builtin')
                
                map_key(
                    'gd', 
                    telescope_builtins.lsp_definitions, 
                    '[G]oto [D]efinition',
                )
                map_key(
                    'gd', 
                    telescope_builtins.lsp_references, 
                    '[G]oto [R]eferences',
                )

            end
        })

        require('mason').setup({})
    end
}
