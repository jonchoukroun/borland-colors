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
" Like Normal, but with transparent background
call s:setGroup("NormalTransparent", s:lightyellow, s:none, s:none)
call s:setGroup("HighlightLine", s:darkblack, s:lightcyan, s:bold)
call s:setGroup("HighlightBlock", s:darkblack, s:darkgreen, s:bold)
call s:setGroup("Callout", s:lightwhite, s:darkmagenta, s:bold)
call s:setGroup("Scroll", s:none, s:darkscroll, s:none)
call s:setGroup("ScrollReverse", s:darkscroll, s:lightscroll, s:none)
call s:setGroup("Disabled", s:darkwhite, s:none, s:none)
call s:setGroup("NonText", s:darkcyan, s:none, s:none)
call s:setGroup("Alert", s:lightred, s:none, s:bold)

" Vim default highlight groups
call s:linkGroup("ColorColumn", "Scroll")
call s:linkGroup("Conceal", "Disabled")
call s:setGroup("CurSearch", s:lightcyan, s:none, s:none)
call s:linkGroup("Cursor", "Callout")
call s:linkGroup("lCursor", "Callout")
call s:linkGroup("CursorIM", "Callout")
call s:linkGroup("CursorColumn", "Scroll")
call s:linkGroup("CursorLine", "Callout")
call s:linkGroup("Directory", "NormalTransparent")
call s:linkGroup("EndOfBuffer", "NonText")
call s:linkGroup("TermCursor", "Scroll")
call s:linkGroup("TermCursorNC", "Scroll")
call s:linkGroup("ErrorMsg", "Alert")

" " INFO Recommended group names for syntax highlighting (:help group-names)
"
" " Comment	         any comment
" call s:setGroup("Comment", s:darkwhite, s:none, s:none)
"
" " Constant	       any constant
" call s:linkGroup("Constant", "NormalTransparent")
" " String           a string constant: "this is a string"
" " call s:linkGroup("String", "Constant")
" call s:setGroup("String", s:darkcyan, s:none, s:none)
" " Character        a character constant: 'c', '\n'
" call s:linkGroup("Character", "Constant")
" " Number           a number constant: 234, 0xff
" call s:linkGroup("Number", "Constant")
" " Boolean          a boolean constant: TRUE, false
" call s:linkGroup("Boolean", "Constant")
" " Float           a floating point constant: 2.3e10
" call s:linkGroup("Float", "Constant")
"
" " Identifier      any variable name
" call s:linkGroup("Identifier", "NormalTransparent")
" " Function        function name (also: methods for classes)
" call s:linkGroup("Function", "NormalTransparent")
"
" " Statement       any statement
" call s:setGroup("Statement", s:lightwhite, s:none, s:none)
" " Operator        "sizeof", "+", "*", etc.
" call s:linkGroup("Operator", "Statement")
" " Keyword         any other keyword
" call s:linkGroup("Keyword", "Statement")
" " Conditional     if, then, else, endif, switch, etc.
" call s:linkGroup("Conditional", "Keyword")
" " Repeat          for, do, while, etc.
" call s:linkGroup("Repeat", "Keyword")
" " Label           case, default, etc.
" call s:linkGroup("Label", "Keyword")
" " Exception       try, catch, throw
" call s:linkGroup("Exception", "Keyword")
"
" " Type            int, long, char, etc.
" call s:setGroup("Type", s:lightwhite, s:none, s:none)
" " StorageClass    static, register, volatile, etc.
" call s:linkGroup("StorageClass", "Type")
" " Structure       struct, union, enum, etc.
" call s:linkGroup("Structure", "Type")
" " Typedef         a typedef
" call s:linkGroup("Typedef", "Type")
"
" " PreProc         generic Preprocessor
" call s:setGroup("PreProc", s:lightgreen, s:none, s:none)
" " Include         preprocessor #include
" call s:linkGroup("Include", "PreProc")
" " Define          preprocessor #define
" call s:linkGroup("Define", "PreProc")
" " Macro           same as Define
" call s:linkGroup("Macro", "PreProc")
" " PreCondit       preprocessor #if, #else, #endif, etc.
" call s:linkGroup("PreCondit", "PreProc")
"
" " Special         any special symbol
" call s:setGroup("Special", s:lightcyan, s:none, s:none)
" " SpecialChar     special character in a constant
" call s:linkGroup("SpecialChar", "Special")
" " Tag             you can use CTRL-] on this
" call s:linkGroup("Tag", "Special")
" " Delimiter       character that needs attention
" call s:linkGroup("Delimiter", "Special")
" " SpecialComment  special things inside a comment
" call s:linkGroup("SpecialComment", "Special")
" " Debug           debugging statements
" call s:linkGroup("Debug", "Special")
"
" " Underlined      text that stands out, HTML links
" call s:linkGroup("Underlined", "NormalTransparent")
"
" " Ignore          left blank, hidden  |hl-Ignore|
" call s:linkGroup("Ignore", "NormalTransparent")
"
" " Error           any erroneous construct
" call s:linkGroup("Error", "NormalTransparent")
"
" " Todo            anything that needs extra attention; mostly the keywords TODO FIXME and XXX
" call s:setGroup("Todo", s:lightred, s:none, s:none)
"
" " Notify          notification UI for noice & nvim-notify
" call s:setGroup("NotifyBody", s:darkblack, s:darkwhite, s:none)
" call s:linkGroup("NotifyERRORBody", "NotifyBody")
" call s:linkGroup("NotifyWARNBody", "NotifyBody")
" call s:linkGroup("NotifyINFOBody", "NotifyBody")
" call s:linkGroup("NotifyDEBUGBody", "NotifyBody")
" call s:linkGroup("NotifyTRACEBody", "NotifyBody")
"
" call s:setGroup("NotifyBorder", s:lightwhite, s:darkwhite, s:none)
" call s:linkGroup("NotifyERRORBorder", "NotifyBorder")
" call s:linkGroup("NotifyWARNBorder", "NotifyBorder")
" call s:linkGroup("NotifyINFOBorder", "NotifyBorder")
" call s:linkGroup("NotifyDEBUGBorder", "NotifyBorder")
" call s:linkGroup("NotifyTRACEBorder", "NotifyBorder")
"
" call s:setGroup("NotifyERRORIcon", s:darkred, s:darkwhite, s:none)
" call s:setGroup("NotifyERRORTitle", s:darkred, s:darkwhite, s:none)
" call s:setGroup("NotifyWARNIcon", s:darkyellow, s:darkwhite, s:none)
" call s:setGroup("NotifyWARNTitle", s:darkyellow, s:darkwhite, s:none)
" call s:setGroup("NotifyINFOIcon", s:darkcyan, s:darkwhite, s:none)
" call s:setGroup("NotifyINFOTitle", s:darkcyan, s:darkwhite, s:none)
" call s:setGroup("NotifyDEBUGIcon", s:darkgreen, s:darkwhite, s:none)
" call s:setGroup("NotifyDEBUGTitle", s:darkgreen, s:darkwhite, s:none)
" call s:setGroup("NotifyTRACEIcon", s:darkgreen, s:darkwhite, s:none)
" call s:setGroup("NotifyTRACETitle", s:darkgreen, s:darkwhite, s:none)
