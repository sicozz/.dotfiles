-- Whites
local base00 = "#353535"
local base01 = "#5b5b5b"
local base10 = "#b4b4b4"
local base11 = "#fafafa"

-- Colors
local accent = "#ffff00"
local accent_mild = "#767600"
local secondary = "#907b00"
local hover = "#141400"
local hover_deep = "#020200"

-- Functional Colors
local hint = "#006200"
local error = "#890000"
local warning = "#4e4e00"
local info = "#006262"

require('darkvoid').setup({
    transparent = true,
    glow = true,
    show_end_of_buffer = true,

    colors = {
        fg = base01,
        bg = "#000000",
        cursor = accent_mild,
        line_nr = base00,
        visual = hover,
        comment = base00,
        string = base01,
        func = accent,
        kw = base10,
        identifier = base11,
        type = secondary,
        type_builtin = secondary,
        search_highlight = accent,
        operator = base10,
        bracket = base01,
        preprocessor = accent,
        bool = accent,
        constant = base11,

        -- enable or disable specific plugin highlights
        plugins = {
            gitsigns = true,
            nvim_cmp = true,
            treesitter = true,
            nvimtree = true,
            telescope = true,
            lualine = true,
            bufferline = true,
            oil = true,
            whichkey = true,
            nvim_notify = true,
        },

        -- gitsigns colors
        added = hint,
        changed = warning,
        removed = error,

        -- Pmenu colors
        pmenu_bg = base01,
        pmenu_sel_bg = accent,
        pmenu_fg = base11,

        -- EndOfBuffer color
        eob = base01,

        -- Telescope specific colors
        border = base10,
        title = base10,

        -- bufferline specific colors
        bufferline_selection = "#ff0000",

        -- LSP diagnostics colors
        error = error,
        warning = warning,
        hint = hint,
        info = info,
    }
})

vim.cmd.colorscheme("darkvoid")
-- Cursor line
vim.api.nvim_set_hl(0, "CursorLine", { bg = hover })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = hover })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = hover })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = hover })
vim.api.nvim_set_hl(0, "StatusLine", { bg = hover_deep, fg = accent_mild })
vim.api.nvim_set_hl(0, "StatusLineNc", { bg = hover_deep, fg = base01 })
-- Tab
vim.api.nvim_set_hl(0, "TabLine", { bg = "none", fg = base00 })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none", fg = base11 })
-- Search
vim.api.nvim_set_hl(0, "Search", { bg = hint, fg = accent })
vim.api.nvim_set_hl(0, "IncSearch", { bg = accent, fg = "#000000" })
-- Netwr
vim.api.nvim_set_hl(0, "Directory", { bg = "none", fg = base01 })
vim.api.nvim_set_hl(0, "NetrwPlain", { bg = "none", fg = base11 })
vim.api.nvim_set_hl(0, "NetrwClassify", { bg = "none", fg = secondary })
vim.api.nvim_set_hl(0, "NetrwTreeBar", { bg = "none", fg = secondary })
vim.api.nvim_set_hl(0, "NetrwLink", { bg = "none", fg = secondary })
vim.api.nvim_set_hl(0, "NetrwSymLink", { bg = "none", fg = secondary })
