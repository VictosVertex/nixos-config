vim.pack.add({
    {src = "https://github.com/catppuccin/nvim"},
})

require("catppuccin").setup({
    transparent_background = true,
    custom_highlights = function(colors)
        return {
            LineNr = { fg = colors.blue },
            CursorLineNr = { fg = colors.green },
        }
    end,
})

vim.cmd.colorscheme "catppuccin"
