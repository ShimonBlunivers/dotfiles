local langs = {
    "lua_ls",
    "luau_lsp",
    "pyright",
    "rust_analyzer",
    "clangd",
    "cmake",
    "arduino_language_server",
}

local setups = {
--    luau_lsp = {
--        cmd = {
--            "/home/shimon/.local/share/nvim/mason/bin/luau-lsp",
--            "lsp",
--            "--definitions=/home/shimon/.config/roblox/globalTypes.d.luau",
--        },
--    },
    arduino_language_server = {
        cmd = { 
            "arduino-language-server", 
            "-cli-config",
            "/home/shimon/.arduino15/arduino-cli.yaml",
            "-fqbn", "esp32:esp32:esp32doit-devkit-v1",
        },
    },
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
