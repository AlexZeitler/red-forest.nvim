local M = {}

M.colors = {
    bg = "#131328",
    bg_dark = "#131328",
    bg_highlight = "#7d7da4",
    fg = "#ECC0A0",
    fg_dark = "#ECC0A0",
    comment = "#7d7da4",
    red = "#DE5F65",
    orange = "#f1a8ab",
    yellow = "#AF8878",
    green = "#EC8B74",
    cyan = "#aab5cb",
    blue = "#9498c2",
    purple = "#c69ec7",
    magenta = "#e9d7e9",
    none = "NONE",
}

function M.setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.termguicolors = true
    vim.g.colors_name = "red-forest"

    local c = M.colors
    local hl = vim.api.nvim_set_hl

    -- Editor
    hl(0, "Normal", { fg = c.fg, bg = c.bg })
    hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_dark })
    hl(0, "FloatBorder", { fg = c.comment, bg = c.bg_dark })
    hl(0, "ColorColumn", { bg = c.bg_highlight })
    hl(0, "Cursor", { fg = c.bg, bg = c.fg })
    hl(0, "CursorLine", { bg = "#1a1a3a" })
    hl(0, "CursorColumn", { bg = "#1a1a3a" })
    hl(0, "LineNr", { fg = c.comment })
    hl(0, "CursorLineNr", { fg = c.orange })
    hl(0, "SignColumn", { fg = c.comment, bg = c.bg })
    hl(0, "VertSplit", { fg = c.comment })
    hl(0, "WinSeparator", { fg = c.comment })
    hl(0, "Folded", { fg = c.comment, bg = c.bg_dark })
    hl(0, "FoldColumn", { fg = c.comment, bg = c.bg })
    hl(0, "NonText", { fg = c.comment })
    hl(0, "SpecialKey", { fg = c.comment })
    hl(0, "Search", { fg = c.bg, bg = c.yellow })
    hl(0, "IncSearch", { fg = c.bg, bg = c.orange })
    hl(0, "Visual", { bg = "#2a2a4a" })
    hl(0, "VisualNOS", { bg = "#2a2a4a" })
    hl(0, "MatchParen", { fg = c.orange, bold = true })
    hl(0, "Pmenu", { fg = c.fg, bg = c.bg_dark })
    hl(0, "PmenuSel", { fg = c.bg, bg = c.blue })
    hl(0, "PmenuSbar", { bg = c.bg_highlight })
    hl(0, "PmenuThumb", { bg = c.comment })
    hl(0, "StatusLine", { fg = c.fg_dark, bg = c.bg_dark })
    hl(0, "StatusLineNC", { fg = c.comment, bg = c.bg_dark })
    hl(0, "TabLine", { fg = c.comment, bg = c.bg_dark })
    hl(0, "TabLineFill", { bg = c.bg_dark })
    hl(0, "TabLineSel", { fg = c.fg, bg = c.bg })
    hl(0, "WildMenu", { fg = c.bg, bg = c.blue })
    hl(0, "Directory", { fg = c.blue })
    hl(0, "Title", { fg = c.magenta, bold = true })
    hl(0, "ErrorMsg", { fg = c.red })
    hl(0, "WarningMsg", { fg = c.yellow })
    hl(0, "ModeMsg", { fg = c.fg })
    hl(0, "MoreMsg", { fg = c.green })
    hl(0, "Question", { fg = c.blue })

    -- Syntax
    hl(0, "Comment", { fg = c.comment, italic = true })
    hl(0, "Constant", { fg = c.orange })
    hl(0, "String", { fg = c.green })
    hl(0, "Character", { fg = c.green })
    hl(0, "Number", { fg = c.orange })
    hl(0, "Boolean", { fg = c.orange })
    hl(0, "Float", { fg = c.orange })
    hl(0, "Identifier", { fg = c.fg })
    hl(0, "Function", { fg = c.blue })
    hl(0, "Statement", { fg = c.purple })
    hl(0, "Conditional", { fg = c.purple })
    hl(0, "Repeat", { fg = c.purple })
    hl(0, "Label", { fg = c.purple })
    hl(0, "Operator", { fg = c.fg })
    hl(0, "Keyword", { fg = c.purple })
    hl(0, "Exception", { fg = c.magenta })
    hl(0, "PreProc", { fg = c.cyan })
    hl(0, "Include", { fg = c.purple })
    hl(0, "Define", { fg = c.purple })
    hl(0, "Macro", { fg = c.cyan })
    hl(0, "PreCondit", { fg = c.cyan })
    hl(0, "Type", { fg = c.yellow })
    hl(0, "StorageClass", { fg = c.purple })
    hl(0, "Structure", { fg = c.yellow })
    hl(0, "Typedef", { fg = c.yellow })
    hl(0, "Special", { fg = c.cyan })
    hl(0, "SpecialChar", { fg = c.cyan })
    hl(0, "Tag", { fg = c.red })
    hl(0, "Delimiter", { fg = c.fg })
    hl(0, "SpecialComment", { fg = c.comment })
    hl(0, "Debug", { fg = c.red })
    hl(0, "Underlined", { underline = true })
    hl(0, "Error", { fg = c.red })
    hl(0, "Todo", { fg = c.bg, bg = c.yellow, bold = true })

    -- Diagnostics
    hl(0, "DiagnosticError", { fg = c.red })
    hl(0, "DiagnosticWarn", { fg = c.yellow })
    hl(0, "DiagnosticInfo", { fg = c.blue })
    hl(0, "DiagnosticHint", { fg = c.cyan })
    hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.red })
    hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow })
    hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue })
    hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = c.cyan })

    -- Git
    hl(0, "DiffAdd", { fg = c.green, bg = "#1a2a1a" })
    hl(0, "DiffChange", { fg = c.orange, bg = "#2a2a1a" })
    hl(0, "DiffDelete", { fg = c.red, bg = "#2a1a1a" })
    hl(0, "DiffText", { fg = c.orange, bg = "#3a3a2a" })
    hl(0, "GitSignsAdd", { fg = c.green })
    hl(0, "GitSignsChange", { fg = c.orange })
    hl(0, "GitSignsDelete", { fg = c.red })

    -- Treesitter
    hl(0, "@variable", { fg = c.fg })
    hl(0, "@variable.builtin", { fg = c.red })
    hl(0, "@variable.parameter", { fg = c.cyan })
    hl(0, "@variable.member", { fg = c.fg })
    hl(0, "@constant", { fg = c.orange })
    hl(0, "@constant.builtin", { fg = c.orange })
    hl(0, "@module", { fg = c.purple })
    hl(0, "@string", { fg = c.green })
    hl(0, "@string.regex", { fg = c.cyan })
    hl(0, "@string.escape", { fg = c.cyan })
    hl(0, "@character", { fg = c.green })
    hl(0, "@number", { fg = c.orange })
    hl(0, "@boolean", { fg = c.orange })
    hl(0, "@float", { fg = c.orange })
    hl(0, "@function", { fg = c.blue })
    hl(0, "@function.builtin", { fg = c.blue })
    hl(0, "@function.call", { fg = c.blue })
    hl(0, "@function.macro", { fg = c.cyan })
    hl(0, "@method", { fg = c.blue })
    hl(0, "@method.call", { fg = c.blue })
    hl(0, "@constructor", { fg = c.yellow })
    hl(0, "@parameter", { fg = c.cyan })
    hl(0, "@keyword", { fg = c.purple })
    hl(0, "@keyword.function", { fg = c.purple })
    hl(0, "@keyword.operator", { fg = c.purple })
    hl(0, "@keyword.return", { fg = c.purple })
    hl(0, "@conditional", { fg = c.purple })
    hl(0, "@repeat", { fg = c.purple })
    hl(0, "@label", { fg = c.purple })
    hl(0, "@operator", { fg = c.fg })
    hl(0, "@exception", { fg = c.magenta })
    hl(0, "@type", { fg = c.yellow })
    hl(0, "@type.builtin", { fg = c.yellow })
    hl(0, "@type.definition", { fg = c.yellow })
    hl(0, "@type.qualifier", { fg = c.purple })
    hl(0, "@storageclass", { fg = c.purple })
    hl(0, "@namespace", { fg = c.purple })
    hl(0, "@include", { fg = c.purple })
    hl(0, "@preproc", { fg = c.cyan })
    hl(0, "@define", { fg = c.purple })
    hl(0, "@macro", { fg = c.cyan })
    hl(0, "@comment", { fg = c.comment, italic = true })
    hl(0, "@punctuation", { fg = c.fg })
    hl(0, "@punctuation.bracket", { fg = c.fg })
    hl(0, "@punctuation.delimiter", { fg = c.fg })
    hl(0, "@punctuation.special", { fg = c.cyan })
    hl(0, "@tag", { fg = c.red })
    hl(0, "@tag.attribute", { fg = c.cyan })
    hl(0, "@tag.delimiter", { fg = c.fg })
    hl(0, "@attribute", { fg = c.cyan })
    hl(0, "@property", { fg = c.fg })
    hl(0, "@field", { fg = c.fg })

    -- LSP
    hl(0, "LspReferenceText", { bg = "#2a2a4a" })
    hl(0, "LspReferenceRead", { bg = "#2a2a4a" })
    hl(0, "LspReferenceWrite", { bg = "#2a2a4a" })
    hl(0, "LspSignatureActiveParameter", { fg = c.orange, bold = true })

    -- Telescope
    hl(0, "TelescopeBorder", { fg = c.comment })
    hl(0, "TelescopePromptBorder", { fg = c.comment })
    hl(0, "TelescopeResultsBorder", { fg = c.comment })
    hl(0, "TelescopePreviewBorder", { fg = c.comment })
    hl(0, "TelescopeSelection", { fg = c.fg, bg = "#2a2a4a" })
    hl(0, "TelescopeMatching", { fg = c.orange, bold = true })

    -- NvimTree / Neo-tree
    hl(0, "NvimTreeNormal", { fg = c.fg, bg = c.bg_dark })
    hl(0, "NvimTreeFolderIcon", { fg = c.blue })
    hl(0, "NvimTreeFolderName", { fg = c.blue })
    hl(0, "NvimTreeOpenedFolderName", { fg = c.blue })
    hl(0, "NvimTreeRootFolder", { fg = c.purple })
    hl(0, "NvimTreeGitDirty", { fg = c.orange })
    hl(0, "NvimTreeGitNew", { fg = c.green })
    hl(0, "NvimTreeGitDeleted", { fg = c.red })
    hl(0, "NeoTreeNormal", { fg = c.fg, bg = c.bg_dark })
    hl(0, "NeoTreeNormalNC", { fg = c.fg, bg = c.bg_dark })
end

return M
