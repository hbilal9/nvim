local options = {
    ensure_installed = {
        "bash",
        "python",
        "lua",
        "json",
        "javascript",
        "typescript",
        "html",
        "css",
        "vue",
        "php",
        "markdown",
        "markdown_inline",
        "yaml",
        "toml",
        "sql",
        "gitignore",
        "dockerfile",
    },
    highlight = {
        enable = true,
        use_languagetree = true,
    },
    indent = {
        enable = true,
    },  
    autotag = {
        enable = true,
    },
    autopairs = {
        enable = true,
    },
}

require("nvim-treesitter.configs").setup(options)