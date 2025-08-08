local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end
return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = true,
            custom_highlights = function(colors)
                return {
                    LineNr = { fg = colors.blue },
                    CursorLineNr = { fg = colors.green },
                }
            end,
        },
        config = function(_, opts)
            -- This is the standard way to apply the options with lazy.nvim
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme "catppuccin"
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",    
        },
        opts = {
            theme = "catppuccin"
        },
    }
}
