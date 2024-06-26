set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
set fillchars+=vert:║

let g:colors_name = "borland"

let s:vmode = "gui"
let s:none = "NONE"

let s:darkblack = "#000000"
let s:darkblue = "#003078"
let s:darkgreen = "#308800"
let s:darkcyan = "#00a8a8"
let s:darkred = "#a80000"
let s:darkmagenta = "#a800a8"
let s:darkyellow = "#a85700"
let s:darkwhite = "#a8a8a8"
let s:darkscroll = "#004078"
let s:lightblack = "#575757"
let s:lightblue = "#5757ff"
let s:lightgreen = "#57ff57"
let s:lightcyan = "#57ffff"
let s:lightred = "#ff5757"
let s:lightmagenta = "#ff57ff"
let s:lightyellow = "#ffff57"
let s:lightwhite = "#ffffff"
let s:lightscroll = "#006078"

let s:italic = "italic"
let s:bold = "bold"
let s:underline = "underline"
let s:undercurl = "undercurl"
let s:reverse = "reverse"
let s:standout = "standout"
let s:strikethrough = "strikethrough"

function! s:setGroup(name, foreground, background, style)
  exe "hi! ".a:name." term=none cterm=none gui=none"
  exe "hi! ".a:name." ".s:vmode."fg=".a:foreground." ".s:vmode."bg=".a:background." ".s:vmode."=".a:style
endf

function! s:linkGroup(name, parent)
  exe "hi! def link ".a:name." ".a:parent
endf

" Helper highlight groups
" Normal text; any text that matches no syntax pattern
call s:setGroup("Normal", s:lightyellow, s:darkblue, s:none)
call s:setGroup("NormalReverse", s:darkblue, s:lightyellow, s:none)
" Like Normal, but with transparent background
call s:setGroup("NormalTransparent", s:lightyellow, s:none, s:none)
call s:setGroup("HighlightLine", s:darkblack, s:lightcyan, s:bold)
call s:setGroup("HighlightBlock", s:lightwhite, s:darkgreen, s:bold)
call s:setGroup("HighlightSubtle", s:lightcyan, s:none, s:none)
call s:setGroup("Callout", s:lightwhite, s:darkmagenta, s:bold)
call s:setGroup("CalloutSubtle", s:lightwhite, s:none, s:none)
call s:setGroup("Scroll", s:lightscroll, s:darkscroll, s:none)
call s:setGroup("ScrollReverse", s:darkscroll, s:lightscroll, s:none)
call s:setGroup("Disabled", s:darkwhite, s:none, s:none)
call s:setGroup("NonText", s:darkcyan, s:none, s:none)
call s:setGroup("Alert", s:lightred, s:none, s:bold)
call s:setGroup("WindowBase", s:darkblack, s:darkwhite, s:none)
call s:setGroup("WindowBold", s:darkblack, s:darkwhite, s:bold)

" Vim default highlight groups
call s:linkGroup("ColorColumn", "Scroll")
call s:linkGroup("Conceal", "Disabled")
call s:linkGroup("CurSearch", "NormalReverse")
call s:linkGroup("Cursor", "WindowBold")
call s:linkGroup("lCursor", "Callout")
call s:linkGroup("CursorIM", "Callout")
call s:linkGroup("CursorColumn", "Scroll")
call s:setGroup("CursorLine", s:none, s:darkscroll, s:none)
call s:linkGroup("Directory", "NormalTransparent")
call s:linkGroup("EndOfBuffer", "NonText")
call s:linkGroup("TermCursor", "Callout")
call s:linkGroup("TermCursorNC", "Callout")
call s:linkGroup("ErrorMsg", "Alert")
call s:linkGroup("WinSeparator", "Disabled")
call s:linkGroup("Folded", "NonText")
call s:linkGroup("FoldColumn", "NonText")
call s:linkGroup("SignColumn", "NonText")
call s:linkGroup("IncSearch", "HighlightLine")
call s:linkGroup("Substitute", "HighlightLine")
call s:linkGroup("LineNr", "NonText")
call s:linkGroup("LineNrAbove", "NonText")
call s:linkGroup("LineNrBelow", "NonText")
call s:linkGroup("CursorLineNr", "CalloutSubtle")
call s:linkGroup("CursorLineFold", "CalloutSubtle")
call s:linkGroup("CursorLineSign", "CalloutSubtle")
call s:setGroup("MatchParen", s:none, s:lightcyan, s:none)
call s:linkGroup("ModeMsg", "HighlightBlock")
call s:linkGroup("MsgSeparator", "Scroll")
call s:setGroup("MsgArea", s:lightcyan, s:none, s:none)
call s:linkGroup("MoreMsg", "Alert")
call s:linkGroup("NormalFloat", "WindowBase")
call s:setGroup("FloatBorder", s:lightwhite, s:darkwhite, s:none)
call s:linkGroup("FloatTitle", "WindowBold")
call s:setGroup("NormalNC", s:darkwhite, s:darkblue, s:none)
call s:linkGroup("Pmenu", "WindowBase")
call s:linkGroup("PmenuSel", "HighlightLine")
call s:linkGroup("PmenuKind", "WindowBase")
call s:linkGroup("PmenuKindSel", "HighlightLine")
call s:linkGroup("PmenuExtra", "WindowBase")
call s:linkGroup("PmenuExtraSel", "HighlightLine")
call s:linkGroup("PmenuSbar", "Scroll")
call s:linkGroup("PmenuThumb", "ScrollReverse")
" Question
" QuickFixLine
call s:linkGroup("Search", "HighlightLine")
" SpecialKey
" SpellBad
" SpellCap
" SpellLocal
" SpellRare
call s:linkGroup("StatusLine", "HighlightBlock")
call s:linkGroup("StatusLineNC", "WindowBase")
call s:linkGroup("TabLine", "WindowBase")
call s:linkGroup("TabLineFill", "Scroll")
call s:linkGroup("TabLineSel", "HighlightBlock")
call s:setGroup("Title", s:darkmagenta, s:none, s:bold)
call s:linkGroup("Visual", "HighlightLine")
call s:linkGroup("VisualNOS", "HighlightLine")
call s:linkGroup("WarningMsg", "Alert")
call s:setGroup("Whitespace", s:none, s:none, s:none)
" Wildmenu
call s:setGroup("WinBarNC", s:darkwhite, s:darkscroll, s:none)

call s:linkGroup("Comment", "Disabled")

call s:linkGroup("Constant", "NormalTransparent")
call s:linkGroup("String", "NormalTransparent")
call s:linkGroup("Character", "NormalTransparent")
call s:linkGroup("Number", "NormalTransparent")
call s:linkGroup("Boolean", "NormalTransparent")
call s:linkGroup("Float", "NormalTransparent")
call s:linkGroup("Identifier", "NormalTransparent")

call s:linkGroup("Statement", "HighlightSubtle")
call s:linkGroup("Function", "HighlightSubtle")

call s:linkGroup("Conditional", "CalloutSubtle")
call s:linkGroup("Repeat", "CalloutSubtle")
call s:linkGroup("Label", "CalloutSubtle")
call s:linkGroup("Operator", "CalloutSubtle")
call s:linkGroup("Keyword", "CalloutSubtle")
call s:linkGroup("Exception", "CalloutSubtle")

call s:linkGroup("PreProc", "Disabled")
call s:linkGroup("Include", "Disabled")
call s:linkGroup("Define", "Disabled")
call s:linkGroup("Macro", "Disabled")
call s:linkGroup("PreCondit", "Disabled")

call s:linkGroup("Type", "HighlightSubtle")
call s:linkGroup("StorageClass", "Disabled")
call s:linkGroup("Structure", "Disabled")
call s:linkGroup("Typedef", "Disabled")

call s:linkGroup("Special", "NonText")
call s:linkGroup("SpecialChar", "NonText")
call s:linkGroup("Tag", "NonText")
call s:linkGroup("Delimiter", "NonText")
call s:linkGroup("SpecialComment", "NonText")
call s:linkGroup("Debug", "NonText")

call s:setGroup("Underlined", s:lightyellow, s:none, s:bold)

call s:linkGroup("Error", "Alert")

call s:linkGroup("Todo", "Callout")

" nvim-cmp highlights
call s:linkGroup("CmpItemAbbrDeprecated", "WindowBase")
call s:linkGroup("CmpItemAbbrMatch", "WindowBold")
call s:linkGroup("CmpItemAbbrMatchFuzzy", "WindowBold")
call s:linkGroup("CmpItemMenu", "WindowBase")

call s:linkGroup("CmpItemKindField", "WindowBase")
call s:linkGroup("CmpItemKindProperty", "WindowBase")
call s:linkGroup("CmpItemKindEvent", "WindowBase")

call s:linkGroup("CmpItemKindText", "WindowBase")
call s:linkGroup("CmpItemKindEnum", "WindowBase")
call s:linkGroup("CmpItemKindKeyword", "WindowBase")

call s:linkGroup("CmpItemKindConstant", "WindowBase")
call s:linkGroup("CmpItemKindConstructor", "WindowBase")
call s:linkGroup("CmpItemKindReference", "WindowBase")

call s:linkGroup("CmpItemKindFunction", "WindowBase")
call s:linkGroup("CmpItemKindStruct", "WindowBase")
call s:linkGroup("CmpItemKindClass", "WindowBase")
call s:linkGroup("CmpItemKindModule", "WindowBase")
call s:linkGroup("CmpItemKindOperator", "WindowBase")

call s:linkGroup("CmpItemKindVariable", "WindowBase")
call s:linkGroup("CmpItemKindFile", "WindowBase")

call s:linkGroup("CmpItemKindUnit", "WindowBase")
call s:linkGroup("CmpItemKindSnippet", "WindowBase")
call s:linkGroup("CmpItemKindFolder", "WindowBase")

call s:linkGroup("CmpItemKindMethod", "WindowBase")
call s:linkGroup("CmpItemKindValue", "WindowBase")
call s:linkGroup("CmpItemKindEnumMember", "WindowBase")

call s:linkGroup("CmpItemKindInterface", "WindowBase")
call s:linkGroup("CmpItemKindColor", "WindowBase")
call s:linkGroup("CmpItemKindTypeParameter", "WindowBase")

" nvim-notify highlights
call s:setGroup("NotifyBorder", s:darkscroll, s:darkcyan, s:none)
call s:setGroup("NotifyTitle", s:darkscroll, s:none, s:bold)
call s:setGroup("NotifyBody", s:darkscroll, s:darkcyan, s:none)
call s:linkGroup("NotifyERRORBorder", "NotifyBorder")
call s:linkGroup("NotifyWARNBorder", "NotifyBorder")
call s:linkGroup("NotifyINFOBorder", "NotifyBorder")
call s:linkGroup("NotifyDEBUGBorder", "NotifyBorder")
call s:linkGroup("NotifyTRACEBorder", "NotifyBorder")
call s:linkGroup("NotifyERRORTitle" , "NotifyTitle")
call s:linkGroup("NotifyWARNTitle", "NotifyTitle")
call s:linkGroup("NotifyINFOTitle", "NotifyTitle")
call s:linkGroup("NotifyDEBUGTitle" , "NotifyTitle")
call s:linkGroup("NotifyTRACETitle" , "NotifyTitle")
call s:setGroup("NotifyERRORIcon", s:lightred, s:none, s:bold)
call s:setGroup("NotifyWARNIcon", s:darkyellow, s:none, s:bold)
call s:setGroup("NotifyINFOIcon", s:lightblue, s:none, s:bold)
call s:setGroup("NotifyDEBUGIcon", s:darkgreen, s:none, s:bold)
call s:setGroup("NotifyTRACEIcon", s:darkblue, s:none, s:bold)
call s:linkGroup("NotifyERRORBody" , "NotifyBody")
call s:linkGroup("NotifyWARNBody", "NotifyBody")
call s:linkGroup("NotifyINFOBody", "NotifyBody")
call s:linkGroup("NotifyDEBUGBody" , "NotifyBody")
call s:linkGroup("NotifyTRACEBody" , "NotifyBody")

" noice highlights
call s:linkGroup("NoiceCmdlinePopup", "WindowBase")
call s:setGroup("NoiceCmdlinePopupBorder", s:lightwhite, s:darkwhite, s:none)

" treesitter-context highlights
call s:linkGroup("TreesitterContext", "ScrollReverse")
call s:linkGroup("TreesitterContextSeparator", "ScrollReverse")
call s:setGroup("TreesitterContextBottom", s:none, s:lightscroll, s:underline)

" lazy highlights
call s:linkGroup("LazyButton", "HighlightLine")
