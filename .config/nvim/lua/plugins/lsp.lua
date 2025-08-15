local langs = {
    "lua_ls",
    "luau_lsp",
    "pyright",
    "rust_analyzer",
    "clangd",
    "cmake",
}

local setups = {
    luau_lsp = {
        cmd = {
            "/home/shimon/.local/share/nvim/mason/bin/luau-lsp",
            "lsp",
            "--definitions=/home/shimon/.config/roblox/globalTypes.d.luau",

        },
    }
}

return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = langs,
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            for _, lang in ipairs(langs) do 
                lspconfig[lang].setup(setups[lang] or {})
            end
        end
    },
}
