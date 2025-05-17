-- bootstrap lazy.nvim, LazyVim and your plugins

vim.diagnostic.config({ virtual_text = true, signs = true, underline = true })
vim.api.nvim_create_autocmd("ModeChanged", {
    callback = function()
        vim.diagnostic.show()
    end,
})

require("config.keymaps")
require("config.lazy")
