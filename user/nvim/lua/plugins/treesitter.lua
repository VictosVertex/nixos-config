return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = {
            "lua",
            "vim",
            "vimdoc",
            "markdown", 
            "rust", 
        },
        auto_install = false,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = { enable = true }
    }
}
