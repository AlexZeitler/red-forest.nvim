local M = {}

M.colors = {
    -- Background colors
    bg = "#131328",
    bg_dark = "#131328",
    bg_highlight = "#3d3d64",

    -- Foreground colors
    fg = "#ECC0A0",
    fg_dark = "#ECC0A0",
    comment = "#7d7da4",

    -- Accent colors
    red = "#DE5F65",
    orange = "#f1a8ab",
    yellow = "#AF8878",
    green = "#EC8B74",
    cyan = "#aab5cb",
    blue = "#9498c2",
    purple = "#c69ec7",
    magenta = "#e9d7e9",
}

function M.setup()
    require("aether").setup({
        transparent = false,
        colors = M.colors,
    })
    vim.cmd.colorscheme("aether")
end

-- Lazy.nvim plugin spec
M.plugin = {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = M.colors,
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
        end,
    },
}

return M
