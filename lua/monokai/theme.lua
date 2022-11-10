local colors = require("monokai.colors")

-- local set_namespace = vim.api.nvim__set_hl_ns or vim.api.nvim_set_hl_ns
-- local namespace = vim.api.nvim_create_namespace("monokai")

local editor = {
	{ "Normal", { fg = colors.white, bg = "NONE" } },
	{ "ColorColumn", { bg = colors.lightblack } },
	{ "Cursor", { fg = colors.black, bg = colors.darkgrey } },
	{ "CursorColumn", { bg = colors.lightblack2 } },
	{ "CursorLine", { bg = colors.lightblack2 } },
	{ "NonText", { fg = colors.lightgrey } },
	{ "StatusLine", { fg = "NONE", bg = "NONE", reverse = true } },
	{ "StatusLineNC", { fg = colors.darkgrey, bg = colors.warmgrey, reverse = true } },
	{ "TabLine", { fg = colors.white, bg = colors.darkblack, reverse = true } },
	{ "Visual", { bg = colors.lightgrey } },
	{ "Search", { fg = colors.black, bg = colors.yellow } },
	{ "MatchParen", { fg = colors.purple, underline = true, bold = true } },
	{ "Question", { fg = colors.yellow } },
	{ "ModeMsg", { fg = colors.yellow } },
	{ "MoreMsg", { fg = colors.yellow } },
	{ "Error", { fg = colors.red } },
	{ "ErrorMsg", { fg = colors.red } },
	{ "WarningMsg", { fg = colors.red } },
	{ "VertSplit", { fg = colors.darkgrey } },
	{ "LineNr", { fg = colors.yellow } },
	{ "CursorLineNr", { fg = colors.yellow } },
	{ "SignColumn", {} },
	{ "NvimInternalError", { fg = colors.white } },

	{ "SpecialKey", { fg = colors.pink } },
	{ "Directory", { fg = colors.white } },
	--
	--
	-- Diff
	{ "DiffAdd", { fg = colors.addbg } },
	{ "DiffDelete", { fg = colors.delbg } },
	{ "DiffChange", { fg = colors.changebg } },
	{ "DiffText", { fg = colors.black, bg = colors.aqua } },

	-- Fold
	{ "Folded", { fg = colors.warmgrey, bg = colors.darkblack } },
	{ "FoldColumn", { bg = colors.darkblack } },
	--
	{ "Pmenu", { fg = colors.white } },
	{ "PmenuSel", { fg = colors.grey, bg = colors.black, reverse = true, bold = true } },
	{ "PmenuThumb", { fg = colors.lightblack, bg = colors.white } },

	{ "Conceal", { fg = colors.lightblack } },

	-- floating window
	{ "FloatShadow", { fg = colors.black, bg = "NONE" } },
	{ "FloatShadowThrough", { fg = colors.black, bg = "NONE" } },
}

local general = {
	{ "Constant", { fg = colors.purple } },
	{ "Number", { fg = colors.purple } },
	{ "Float", { fg = colors.purple } },
	{ "Boolean", { fg = colors.purple } },
	{ "Character", { fg = colors.yellow } },
	{ "String", { fg = colors.yellow } },

	{ "Type", { fg = colors.pink, bold = true } },
	{ "Structure", { fg = colors.aqua } },
	{ "StorageClass", { fg = colors.aqua } },
	{ "Typedef", { fg = colors.aqua } },
	{ "Function", { fg = colors.aqua } },

	{ "Identifier", { fg = colors.green } },

	{ "Statement", { fg = colors.pink } },
	{ "Operator", { fg = colors.pink } },
	{ "Label", { fg = colors.pink } },

	{ "Keyword", { fg = colors.pink, bold = true } },

	{ "PreProc", { fg = colors.green } },
	{ "Include", { fg = colors.pink, bold = true } },
	{ "Define", { fg = colors.pink, bold = true } },
	{ "Macro", { fg = colors.green } },
	{ "PreCondit", { fg = colors.green } },

	{ "Special", { fg = colors.purple } },
	{ "SpecialChar", { fg = colors.pink } },
	{ "Delimiter", { fg = colors.white } },
	{ "SpecialComment", { fg = colors.aqua } },
	{ "Tag", { fg = colors.pink } },

	{ "Todo", { fg = colors.deepOrange, bold = true, italic = true } },
	{ "Comment", { fg = colors.grey, italic = true } },
}

local diagnostic = {
	{ "DiagnosticError", { fg = colors.red } },
	{ "DiagnosticWarn", { fg = colors.orange } },
	{ "DiagnosticUnderlineError", { undercurl = true, special = colors.red } },
	{ "DiagnosticUnderlineWarn", { undercurl = true, special = colors.orange } },
	{ "DiagnosticUnderlineInfo", { undercurl = true, special = colors.yellow } },
	{ "DiagnosticUnderlineHint", { undercurl = true, special = colors.aqua } },
}

local treesitter = {
	{ "@attribute", { fg = colors.green } },
	{ "@boolean", { fg = colors.darkpurple, bold = true } },
	{ "@character", { fg = colors.yellow } },
	{ "@comment", { fg = colors.grey, italic = true } },
	{ "@conditional", { fg = colors.pink, bold = true } },
	{ "@constant", { fg = colors.green } },
	{ "@const.builtin", { fg = colors.darkpurple, bold = true, italic = true } },
	{ "@const.macro", { fg = colors.green } },
	{ "@constructor", { fg = colors.green } },
	{ "@error", { fg = colors.pink } },
	{ "@exception", { fg = colors.pink } },
	{ "@field", { fg = colors.green } },
	{ "@float", { fg = colors.purple } },
	{ "@function", { fg = colors.aqua } },
	{ "@function.builtin", { fg = colors.darkaqua, bold = true, italic = true } },
	{ "@function.macro", { fg = colors.darkaqua, bold = true, italic = true } },
	{ "@include", { fg = colors.pink, bold = true } },
	{ "@keyword", { fg = colors.pink, bold = true } },
	{ "@keyword.function", { fg = colors.pink, bold = true } },
	{ "@keyword.operation", { fg = colors.pink, bold = true } },
	{ "@keyword.return", { fg = colors.pink, bold = true } },
	{ "@label", { fg = colors.pink } },
	{ "@method", { fg = colors.aqua } },
	{ "@namespace", { fg = colors.pink } },
	{ "@none", { fg = colors.white } },
	{ "@number", { fg = colors.purple } },
	{ "@operator", { fg = colors.pink } },
	{ "@parameter", { fg = colors.white } },
	{ "@parameter.reference", { fg = colors.pink } },
	{ "@property", { fg = colors.green } },
	{ "@punct.delimiter", { fg = colors.white } },
	{ "@punct.bracket", { fg = colors.white } },
	{ "@punct.special", { fg = colors.white } },
	{ "@repeat", { fg = colors.pink, bold = true } },
	{ "@String", { fg = colors.yellow } },
	{ "@StringRegex", { fg = colors.pink } },
	{ "@StringEscape", { fg = colors.purple } },
	{ "@StringSpecial", { fg = colors.purple } },
	{ "@symbol", { fg = colors.pink } },
	{ "@tag", { fg = colors.pink } },
	{ "@tagAttribute", { fg = colors.pink } },
	{ "@tagDelimiter", { fg = colors.pink } },
	{ "@text", { fg = colors.pink } },
	{ "@text.uri", { fg = colors.lightblue, underline = true } },
	{ "@text.reference", { fg = colors.pink } },
	{ "@text.strong", { bold = true } },
	{ "@text.emphasis", { fg = colors.pink, italic = true } },
	{ "@text.title", { fg = colors.pink, bold = true } },
	{ "@underline", { fg = colors.pink, underline = true } },
	{ "@strike", { fg = colors.pink, strikethrough = true } },
	{ "@title", { fg = colors.pink } },
	{ "@literal", { fg = colors.yellow } },
	{ "@math", { fg = colors.pink } },
	{ "@environment", { fg = colors.pink } },
	{ "@environment.name", { fg = colors.pink } },
	{ "@note", { fg = colors.pink } },
	{ "@warning", { fg = colors.pink } },
	{ "@danger", { fg = colors.pink } },
	{ "@type", { fg = colors.pink } },
	{ "@type.builtin", { fg = colors.darkpurple, bold = true, italic = true } },
	{ "@variable", { fg = colors.orange } },
	{ "@variable.builtin", { fg = colors.darkaqua, bold = true, italic = true } },
}

local cmp = {
	{ "CmpItemAbbrDeprecated", { strikethrough = true, fg = "#808080" } },
	{ "CmpItemAbbrMatch", { fg = "#569CD0" } },
	{ "CmpItemAbbrMatchFuzzy", { fg = "#569CD0", bold = true } },
	{ "CmpItemKindVariable", { fg = "#9CDCFE" } },
	{ "CmpItemKindInterface", { fg = "#9CDCFE" } },
	{ "CmpItemKindText", { fg = "#9CDCFE" } },
	{ "CmpItemKindFunction", { fg = "#C586C0" } },
	{ "CmpItemKindMethod", { fg = "#C586C0" } },
	{ "CmpItemKindKeyword", { fg = "#D4D4D4" } },
	{ "CmpItemKindProperty", { fg = "#D4D4D4" } },
	{ "CmpItemKindUnit", { fg = "#D4D4D4" } },
}
-- " gray
local neorg = {
	{ "NeorgMarkupVerbatim", { fg = colors.orange } },
}

local telescope = {
	-- slightly brighter background to make the float pop more
	{ "FloatBorder", { bg = "NONE", fg = "#5E81AC" } },
	{ "NormalFloat", { bg = "NONE" } },
	{ "TelescopeNormal", { bg = "NONE" } },
	{ "TelescopeBorder", { bg = "NONE" } },
}

local function highlight(statement)
	for name, setting in pairs(statement) do
		vim.api.nvim_set_hl(0, setting[1], setting[2])
	end
end

highlight(editor)
highlight(general)
highlight(diagnostic)
highlight(treesitter)
highlight(cmp)
highlight(neorg)
highlight(telescope)
-- set_namespace(namespace)
