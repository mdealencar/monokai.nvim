local colors = require("monokai.colors")

-- local set_namespace = vim.api.nvim__set_hl_ns or vim.api.nvim_set_hl_ns
-- local namespace = vim.api.nvim_create_namespace("monokai")

local editor = {
	Normal = { fg = colors.white, bg = "NONE" },
	ColorColumn = { bg = colors.lightblack },
	Cursor = { fg = colors.black, bg = colors.darkgrey },
	CursorColumn = { bg = colors.lightblack2 },
	CursorLine = { bg = colors.lightblack2 },
	NonText = { fg = colors.lightgrey },
	StatusLine = { fg = "NONE", bg = "NONE", reverse = true },
	StatusLineNC = { fg = colors.darkgrey, bg = colors.warmgrey, reverse = true },
	TabLine = { fg = colors.white, bg = colors.darkblack, reverse = true },
	Visual = { bg = colors.lightgrey },
	Search = { fg = colors.black, bg = colors.yellow },
	MatchParen = { fg = colors.purple, underline = true, bold = true },
	Question = { fg = colors.yellow },
	ModeMsg = { fg = colors.yellow },
	MoreMsg = { fg = colors.yellow },
	Error = { fg = colors.red },
	ErrorMsg = { fg = colors.red },
	WarningMsg = { fg = colors.red },
	VertSplit = { fg = colors.darkgrey },
	LineNr = { fg = colors.warmgrey, bg = colors.black },
	CursorLineNr = { fg = colors.yellow },
	SignColumn = {},
	NvimInternalError = { fg = colors.white },

	SpecialKey = { fg = colors.pink },
	Directory = { fg = colors.white },

	-- Diff
	DiffAdd = { fg = colors.addbg },
	DiffDelete = { fg = colors.delbg },
	DiffChange = { fg = colors.changebg },
	DiffText = { fg = colors.black, bg = colors.aqua },

	-- Fold
	Folded = { fg = colors.warmgrey, bg = colors.darkblack },
	FoldColumn = { bg = colors.darkblack },
	--
	Pmenu = { fg = colors.white },
	PmenuSel = { fg = colors.grey, bg = colors.black, reverse = true, bold = true },
	PmenuThumb = { fg = colors.lightblack, bg = colors.white },

	Conceal = { fg = colors.lightblack },

	-- floating window
	FloatShadow = { fg = colors.black, bg = "NONE" },
	FloatShadowThrough = { fg = colors.black, bg = "NONE" },
}

local syntax = {
	-- Constant
	Constant = { fg = colors.purple },
	String = { fg = colors.yellow },
	Character = { fg = colors.yellow },
	Number = { fg = colors.purple },
	Boolean = { fg = colors.purple },
	Float = { fg = colors.purple },

	-- Identifier
	Identifier = { fg = colors.orange },
	Function = { fg = colors.aqua },

	--  Statement
	Statement = { fg = colors.pink },
	Conditional = { fg = colors.pink, bold = true },
	Repeat = { fg = colors.pink, bold = true },
	Label = { fg = colors.pink, bold = true },
	Operator = { fg = colors.pink, bold = true },
	Keyword = { fg = colors.pink, bold = true },
	Exception = { fg = colors.pink, bold = true },

	-- PreProc
	PreProc = { fg = colors.green },
	Include = { fg = colors.pink, bold = true },
	Define = { fg = colors.pink, bold = true },
	Macro = { fg = colors.darkaqua, bold = true, italic = true },
	PreCondit = { fg = colors.green },

	-- Type
	Type = { fg = colors.pink, bold = true },
	StorageClass = { fg = colors.aqua },
	Structure = { fg = colors.aqua },
	Typedef = { fg = colors.aqua },

	-- Special
	Special = { fg = colors.purple },
	SpecialChar = { fg = colors.pink },
	Tag = { fg = colors.pink },
	Delimiter = { fg = colors.white },
	SpecialComment = { fg = colors.aqua },
	Debug = { fg = colors.pink },

	Operator = { fg = colors.pink },
	Label = { fg = colors.pink },

	Keyword = { fg = colors.pink, bold = true },

	Todo = { fg = colors.deepOrange, bold = true, italic = true },
	Comment = { fg = colors.warmgrey },

	-- ["@lsp.type.class"]         Structure
	-- ["@lsp.type.decorator"]     Function
	-- ["@lsp.type.enum"]          Structure
	-- ["@lsp.type.enumMember"]    Constant
	-- ["@lsp.type.function"]      Function
	-- ["@lsp.type.interface"]     Structure
	-- ["@lsp.type.macro"]         Macro
	-- ["@lsp.type.method"]        Function
	-- ["@lsp.type.namespace"]     Structure
	-- ["@lsp.type.parameter"]     Identifier
	-- ["@lsp.type.property"]      Identifier
	-- ["@lsp.type.struct"]        Structure
	-- ["@lsp.type.type"]          Type
	-- ["@lsp.type.typeParameter"] TypeDef
	-- ["@lsp.type.variable"]      Identifier
}

local diagnostic = {
	DiagnosticError = { fg = colors.red },
	DiagnosticWarn = { fg = colors.orange },
	DiagnosticUnderlineError = { undercurl = true, special = colors.red },
	DiagnosticUnderlineWarn = { undercurl = true, special = colors.orange },
	DiagnosticUnderlineInfo = { undercurl = true, special = colors.white },
	DiagnosticUnderlineHint = { undercurl = true, special = colors.aqua },
	DiagnosticSignError = { fg = colors.red },
	DiagnosticSignWarn = { fg = colors.orange },
	DiagnosticSignInfo = { fg = colors.white },
	DiagnosticSignHint = { fg = colors.aqua },
	DiagnosticVirtualTextError = { fg = colors.red },
	DiagnosticVirtualTextWarn = { fg = colors.orange },
	DiagnosticVirtualTextInfo = { fg = colors.white },
	DiagnosticVirtualTextHint = { fg = colors.aqua },
}

local treesitter = {
	["@attribute"] = { fg = colors.green },
	["@boolean"] = { fg = colors.darkpurple, bold = true },
	["@character"] = { fg = colors.yellow },
	["@comment"] = { fg = colors.warmgrey },
	["@conditional"] = { fg = colors.pink, bold = true },
	["@constant"] = { fg = "#ab9df2" },
	["@constant.builtin"] = { fg = "#ab9df2", bold = true, italic = true },
	["@const.builtin"] = { fg = colors.darkpurple, bold = true, italic = true },
	["@const.macro"] = { fg = colors.green },
	["@constructor"] = { fg = colors.green },
	["@error"] = { fg = colors.pink },
	["@exception"] = { fg = colors.pink },
	["@field"] = { fg = colors.green },
	["@float"] = { fg = colors.purple },
	["@function"] = { fg = colors.aqua },
	["@function.builtin"] = { fg = colors.darkaqua, bold = true, italic = true },
	["@function.macro"] = { fg = colors.darkaqua, bold = true, italic = true },
	["@include"] = { fg = colors.pink, bold = true },
	["@keyword"] = { fg = colors.pink, bold = true },
	["@keyword.function"] = { fg = colors.pink, bold = true },
	["@keyword.operation"] = { fg = colors.pink, bold = true },
	["@keyword.return"] = { fg = colors.pink, bold = true },
	["@label"] = { fg = colors.pink },
	["@method"] = { fg = colors.aqua },
	["@namespace"] = { fg = colors.pink },
	["@none"] = { fg = colors.white },
	["@number"] = { fg = colors.purple },
	["@operator"] = { fg = colors.pink },
	["@parameter"] = { fg = colors.white },
	["@parameter.reference"] = { fg = colors.pink },
	["@property"] = { fg = colors.green },
	["@punct.delimiter"] = { fg = colors.white },
	["@punct.bracket"] = { fg = colors.white },
	["@punct.special"] = { fg = colors.white },
	["@repeat"] = { fg = colors.pink, bold = true },
	["@string"] = { fg = colors.yellow },
	["@string.regex"] = { fg = colors.pink },
	["@string.escape"] = { fg = colors.purple },
	["@string.special"] = { fg = colors.purple, bold = true },
	["@symbol"] = { fg = colors.pink },
	["@tag"] = { fg = colors.pink },
	["@tagAttribute"] = { fg = colors.pink },
	["@tagDelimiter"] = { fg = colors.pink },
	["@text"] = { fg = colors.pink },
	["@text.uri"] = { fg = colors.lightblue, underline = true },
	["@text.reference"] = { fg = colors.pink },
	["@text.strong"] = { bold = true },
	["@text.emphasis"] = { fg = colors.pink, italic = true },
	["@text.title"] = { fg = colors.pink, bold = true },
	["@underline"] = { fg = colors.pink, underline = true },
	["@strike"] = { fg = colors.pink, strikethrough = true },
	["@title"] = { fg = colors.pink },
	["@literal"] = { fg = colors.yellow },
	["@math"] = { fg = colors.pink },
	["@environment"] = { fg = colors.pink },
	["@environment.name"] = { fg = colors.pink },
	["@note"] = { fg = colors.pink },
	["@warning"] = { fg = colors.pink },
	["@danger"] = { fg = colors.pink },
	["@type"] = { fg = colors.pink },
	["@type.builtin"] = { fg = colors.pink, bold = true },
	["@variable"] = { fg = colors.orange },
	["@variable.builtin"] = { fg = colors.darkaqua, bold = true, italic = true },
}

local cmp = {
	CmpItemAbbr = { fg = colors.white },
	CmpItemAbbrDeprecated = { strikethrough = true, fg = colors.grey },
	CmpItemAbbrMatch = { fg = colors.aqua },
	CmpItemAbbrMatchFuzzy = { fg = colors.aqua, bold = true },
	CmpItemMenu = { fg = colors.base6 },
	CmpItemKindDefault = { fg = colors.white },
	CmpItemKindVariable = { fg = colors.pink },
	CmpItemKindConstant = { fg = colors.pink },
	CmpItemKindReference = { fg = colors.pink },
	CmpItemKindValue = { fg = colors.pink },
	CmpItemKindKeyword = { fg = colors.pink },
	CmpItemKindClass = { fg = colors.orange },
	CmpItemKindInterface = { fg = colors.orange },
	CmpItemKindStruct = { fg = colors.orange },
	CmpItemKindEvent = { fg = colors.orange },
	CmpItemKindEnum = { fg = colors.orange },
	CmpItemKindUnit = { fg = colors.orange },
	CmpItemKindFunction = { fg = colors.aqua },
	CmpItemKindMethod = { fg = colors.aqua },
	CmpItemKindConstructor = { fg = colors.aqua },
	CmpItemKindProperty = { fg = colors.green },
	CmpItemKindTypeParameter = { fg = colors.green },
	CmpItemKindField = { fg = colors.green },
	CmpItemKindEnumMember = { fg = colors.green },
	CmpItemKindOperator = { fg = colors.green },
	CmpItemKindModule = { fg = colors.yellow },
	CmpItemKindText = { fg = colors.yellow },
	CmpDocumentation = { fg = colors.white, bg = colors.base1 },
   	CmpDocumentationBorder = { fg = colors.white, bg = colors.base1 },
}

local neorg = {
	NeorgMarkupVerbatim = { fg = colors.orange },
}

local telescope = {
	FloatBorder = { fg = colors.base7 },
	NormalFloat = { bg = colors.base1 },
	TelescopeNormal = { fg = colors.base8, bg = colors.base0 },
	TelescopeBorder = { fg = colors.base7 },
	TelescopeSelection = { fg = colors.white, bold = true },
	TelescopeSelectionCaret = { fg = colors.green },
	TelescopeMultiSelection = { fg = colors.pink },
	TelescopeMatching = { fg = colors.aqua },
}

local function highlight(statements)
	for name, setting in pairs(statements) do
		vim.api.nvim_set_hl(0, name, setting)
	end
end

for _, group in pairs({
	editor,
	syntax,
	diagnostic,
	treesitter,
	cmp,
	neorg,
	telescope,
	}) do
	highlight(group)
end
-- set_namespace(namespace)
