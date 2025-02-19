return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- Enable automatic installation of missing parsers
            auto_install = true,

            sync_install = false,

            -- New required field
            modules = {}, -- Empty table to satisfy the requirements

            -- New optional field: Parsers to ignore during installation
            ignore_install = {}, -- Empty by default, add languages to exclude if needed

            -- Specify the languages to install
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "javascript",
                "typescript",
                "tsx",
                "html",
                "go",
                "gomod",
                "gowork",
                "gosum",
                "java",
                "json",
                "zig",
            },

            -- Enable syntax highlighting
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false, -- ✅ Add this line
            },

            -- Enable indentation based on Treesitter
            indent = { enable = true },
        })
    end,
}
