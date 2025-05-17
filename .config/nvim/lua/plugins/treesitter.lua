return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "lua",
                "c",
                "cpp",
                "python",
                "vhdl",
                "bash",
            },
            highlight = {
                enable = true,
            },
            auto_install = true,
        },
    },
}
