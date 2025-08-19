vim.pack.add({
    {src = "https://github.com/chomosuke/typst-preview.nvim"},
})

require("typst-preview").setup({
    follow_cursor = true,
    dependencies_bin = {
        ['tinymist'] = 'tinymist',
        ['websocat'] = 'websocat',
    }
})
