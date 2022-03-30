local colors = require("monokai.colors")

-- local set_namespace = vim.api.nvim__set_hl_ns or vim.api.nvim_set_hl_ns
-- local namespace = vim.api.nvim_create_namespace("monokai")

local editor = {
	Normal = { fg = colors.white },
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
	LineNr = { fg = colors.yellow },
	CursorLineNr = { fg = colors.yellow },
	SignColumn = {},
	NvimInternalError = { fg = colors.white },

	SpecialKey = { fg = colors.pink },
	Directory = { fg = colors.white },
	--
	--
	-- Diff
	DiffAdd = { fg = colors.addfg, bg = colors.addbg },
	DiffDelete = { fg = colors.black, bg = colors.delbg },
	DiffChange = { fg = colors.changefg, bg = colors.changebg },
	DiffText = { fg = colors.black, bg = colors.aqua },

	-- Fold
	Folded = { fg = colors.warmgrey, bg = colors.darkblack },
	FoldColumn = { bg = colors.darkblack },
	--
	Pmenu = { fg = colors.white },
	PmenuSel = { fg = colors.grey, bg = colors.black, reverse = true, bold = true },
	PmenuThumb = { fg = colors.lightblack, bg = colors.white },

	Conceal = { fg = colors.lightblack },
}

local general = {
	Constant = { fg = colors.purple },
	Number = { fg = colors.purple },
	Float = { fg = colors.purple },
	Boolean = { fg = colors.purple },
	Character = { fg = colors.yellow },
	String = { fg = colors.yellow },

	Type = { fg = colors.pink, bold = true },
	Structure = { fg = colors.aqua },
	StorageClass = { fg = colors.aqua },
	Typedef = { fg = colors.aqua },
	Function = { fg = colors.aqua },

	Identifier = { fg = colors.green },

	Statement = { fg = colors.pink },
	Operator = { fg = colors.pink },
	Label = { fg = colors.pink },

	Keyword = { fg = colors.pink, bold = true },

	PreProc = { fg = colors.green },
	Include = { fg = colors.pink, bold = true },
	Define = { fg = colors.pink, bold = true },
	Macro = { fg = colors.green },
	PreCondit = { fg = colors.green },

	Special = { fg = colors.purple },
	SpecialChar = { fg = colors.pink },
	Delimiter = { fg = colors.white },
	SpecialComment = { fg = colors.aqua },
	Tag = { fg = colors.pink },

	Todo = { fg = colors.deepOrange, bold = true, italic = true },
	Comment = { fg = colors.grey, italic = true },
}

local diagnostic = {
	DiagnosticError = { fg = colors.red },
	DiagnosticWarn = { fg = colors.orange },
	DiagnosticUnderlineError = { undercurl = true, special = colors.red },
	DiagnosticUnderlineWarn = { undercurl = true, special = colors.orange },
	DiagnosticUnderlineInfo = { undercurl = true, special = colors.yellow },
	DiagnosticUnderlineHint = { undercurl = true, special = colors.aqua },
}

local treesitter = {
	TSAttribute = { fg = colors.green },
	TSBoolean = { fg = colors.darkpurple, bold = true },
	TSCharacter = { fg = colors.yellow },
	TSComment = { fg = colors.grey, italic = true },
	TSConditional = { fg = colors.pink, bold = true },
	TSConstant = { fg = colors.green },
	TSConstBuiltin = { fg = colors.darkpurple, bold = true, italic = true },
	TSConstMacro = { fg = colors.green },
	TSConstructor = { fg = colors.green },
	TSError = { fg = colors.pink },
	TSException = { fg = colors.pink },
	TSField = { fg = colors.green },
	TSFloat = { fg = colors.purple },
	TSFunction = { fg = colors.aqua },
	TSFuncBuiltin = { fg = colors.darkaqua, bold = true, italic = true },
	TSFuncMacro = { fg = colors.darkaqua, bold = true, italic = true },
	TSInclude = { fg = colors.pink, bold = true },
	TSKeyword = { fg = colors.pink, bold = true },
	TSKeywordFunction = { fg = colors.pink, bold = true },
	TSKeywordOperation = { fg = colors.pink, bold = true },
	TSKeywordReturn = { fg = colors.pink, bold = true },
	TSLabel = { fg = colors.pink },
	TSMethod = { fg = colors.aqua },
	TSNamespace = { fg = colors.pink },
	TSNone = { fg = colors.pink },
	TSNumber = { fg = colors.purple },
	TSOperator = { fg = colors.pink },
	TSParameter = { fg = colors.white },
	TSParameterReference = { fg = colors.pink },
	TSProperty = { fg = colors.green },
	TSPunctDelimiter = { fg = colors.white },
	TSPunctBracket = { fg = colors.white },
	TSPunctSpecial = { fg = colors.white },
	TSRepeat = { fg = colors.pink, bold = true },
	TSstring = { fg = colors.yellow },
	TSstringRegex = { fg = colors.pink },
	TSstringEscape = { fg = colors.purple },
	TSstringSpecial = { fg = colors.purple },
	TSSymbol = { fg = colors.pink },
	TSTag = { fg = colors.pink },
	TSTagAttribute = { fg = colors.pink },
	TSTagDelimiter = { fg = colors.pink },
	TSText = { fg = colors.pink },
	TSStrong = { bold = true },
	TSEmphasis = { fg = colors.pink, italic = true },
	TSUnderline = { fg = colors.pink, underline = true },
	TSStrike = { fg = colors.pink, strikethrough = true },
	TSTitle = { fg = colors.pink },
	TSLiteral = { fg = colors.yellow },
	TSURL = { fg = colors.white },
	TSMath = { fg = colors.pink },
	TSTextReference = { fg = colors.pink },
	TSEnvironment = { fg = colors.pink },
	TSEnvironmentName = { fg = colors.pink },
	TSNote = { fg = colors.pink },
	TSWarning = { fg = colors.pink },
	TSDanger = { fg = colors.pink },
	TSType = { fg = colors.pink },
	TSTypeBuiltin = { fg = colors.darkpurple, bold = true, italic = true },
	TSVariable = { fg = colors.orange },
	TSVariableBuiltin = { fg = colors.darkaqua, bold = true, italic = true },
}
--
local cmp = {
	CmpItemAbbrDeprecated = { strikethrough = true, fg = "#808080" },
	CmpItemAbbrMatch = { fg = "#569CD0" },
	CmpItemAbbrMatchFuzzy = { fg = "#569CD0", bold = true },
	CmpItemKindVariable = { fg = "#9CDCFE" },
	CmpItemKindInterface = { fg = "#9CDCFE" },
	CmpItemKindText = { fg = "#9CDCFE" },
	CmpItemKindFunction = { fg = "#C586C0" },
	CmpItemKindMethod = { fg = "#C586C0" },
	CmpItemKindKeyword = { fg = "#D4D4D4" },
	CmpItemKindProperty = { fg = "#D4D4D4" },
	CmpItemKindUnit = { fg = "#D4D4D4" },
}
-- " gray

local function highlight(statement)
	for name, setting in pairs(statement) do
		vim.api.nvim_set_hl(0, name, setting)
	end
end

highlight(editor)
highlight(general)
highlight(diagnostic)
highlight(treesitter)
highlight(cmp)
-- set_namespace(namespace)
