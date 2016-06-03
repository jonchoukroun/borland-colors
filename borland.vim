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
let s:darkblue = "#0000a8"
let s:darkgreen = "#00a800"
let s:darkcyan = "#00a8a8"
let s:darkred = "#a80000"
let s:darkmagenta = "#a800a8"
let s:darkyellow = "#a85700"
let s:darkwhite = "#a8a8a8"
let s:darkscroll = "#0038a8"
let s:lightblack = "#575757"
let s:lightblue = "#5757ff"
let s:lightgreen = "#57ff57"
let s:lightcyan = "#57ffff"
let s:lightred = "#ff5757"
let s:lightmagenta = "#ff57ff"
let s:lightyellow = "#ffff57"
let s:lightwhite = "#ffffff"
let s:lightscroll = "#0070a8"

let s:italic = ",italic"
let s:bold = ",bold"
let s:underline = ",underline"
let s:undercurl = ",undercurl"
let s:reverse = ",reverse"
let s:standout = ",standout"

let s:bg_none = " ".s:vmode."bg=".s:none
let s:bg_darkblack = " ".s:vmode."bg=".s:darkblack
let s:bg_darkblue = " ".s:vmode."bg=".s:darkblue
let s:bg_darkgreen = " ".s:vmode."bg=".s:darkgreen
let s:bg_darkcyan = " ".s:vmode."bg=".s:darkcyan
let s:bg_darkred = " ".s:vmode."bg=".s:darkred
let s:bg_darkmagenta = " ".s:vmode."bg=".s:darkmagenta
let s:bg_darkyellow = " ".s:vmode."bg=".s:darkyellow
let s:bg_darkwhite = " ".s:vmode."bg=".s:darkwhite
let s:bg_darkscroll = " ".s:vmode."bg=".s:darkscroll
let s:bg_lightblack = " ".s:vmode."bg=".s:lightblack
let s:bg_lightblue = " ".s:vmode."bg=".s:lightblue
let s:bg_lightgreen = " ".s:vmode."bg=".s:lightgreen
let s:bg_lightcyan = " ".s:vmode."bg=".s:lightcyan
let s:bg_lightred = " ".s:vmode."bg=".s:lightred
let s:bg_lightmagenta = " ".s:vmode."bg=".s:lightmagenta
let s:bg_lightyellow = " ".s:vmode."bg=".s:lightyellow
let s:bg_lightwhite = " ".s:vmode."bg=".s:lightwhite
let s:bg_lightscroll = " ".s:vmode."bg=".s:lightscroll

let s:fg_none = " ".s:vmode."fg=".s:none
let s:fg_darkblack = " ".s:vmode."fg=".s:darkblack
let s:fg_darkblue = " ".s:vmode."fg=".s:darkblue
let s:fg_darkgreen = " ".s:vmode."fg=".s:darkgreen
let s:fg_darkcyan = " ".s:vmode."fg=".s:darkcyan
let s:fg_darkred = " ".s:vmode."fg=".s:darkred
let s:fg_darkmagenta = " ".s:vmode."fg=".s:darkmagenta
let s:fg_darkyellow = " ".s:vmode."fg=".s:darkyellow
let s:fg_darkwhite = " ".s:vmode."fg=".s:darkwhite
let s:fg_darkscroll = " ".s:vmode."fg=".s:darkscroll
let s:fg_lightblack = " ".s:vmode."fg=".s:lightblack
let s:fg_lightblue = " ".s:vmode."fg=".s:lightblue
let s:fg_lightgreen = " ".s:vmode."fg=".s:lightgreen
let s:fg_lightcyan = " ".s:vmode."fg=".s:lightcyan
let s:fg_lightred = " ".s:vmode."fg=".s:lightred
let s:fg_lightmagenta = " ".s:vmode."fg=".s:lightmagenta
let s:fg_lightyellow = " ".s:vmode."fg=".s:lightyellow
let s:fg_lightwhite = " ".s:vmode."fg=".s:lightwhite
let s:fg_lightscroll = " ".s:vmode."fg=".s:lightscroll

let s:fm_none = " ".s:vmode."=".s:none. " term=".s:none
let s:fm_italic = " ".s:vmode."=".s:none.s:italic. " term=".s:none.s:italic
let s:fm_bold = " ".s:vmode."=".s:none.s:bold. " term=".s:none.s:bold
let s:fm_underline = " ".s:vmode."=".s:none.s:underline. " term=".s:none.s:underline
let s:fm_undercurl = " ".s:vmode."=".s:none.s:undercurl. " term=".s:none.s:undercurl
let s:fm_reverse = " ".s:vmode."=".s:none.s:reverse. " term=".s:none.s:reverse
let s:fm_standout = " ".s:vmode."=".s:none.s:standout. " term=".s:none.s:standout

" INFO Basic colors

exe "hi! Normal".		s:fg_lightyellow.	s:bg_darkblue.		s:fm_none
exe "hi! Statement".	s:fg_lightwhite.	s:bg_none.			s:fm_none
exe "hi! Comment".		s:fg_darkwhite.		s:bg_none.			s:fm_none
exe "hi! PreProc".		s:fg_lightgreen.	s:bg_none.			s:fm_none
hi! def link Constant		Normal
hi! def link Identifier		Normal
hi! def link Special		Normal
hi! def link Underlined		Normal
hi! def link Ignore			Normal
hi! def link Error			Normal
hi! def link Todo			Normal
hi! def link Type			Statement
hi! def link Title			Normal
hi! def link Directory		Normal

exe "hi! ErrorMsg". 	s:fg_lightyellow.	s:bg_darkred.		s:fm_none
exe "hi! WarningMsg". 	s:fg_lightyellow.	s:bg_darkyellow.	s:fm_none
exe "hi! ModeMsg".		s:fg_lightwhite.	s:bg_none.			s:fm_none
hi! def link MoreMsg		ModeMsg

exe "hi! PMenu". 		s:fg_darkblack.		s:bg_darkcyan.		s:fm_none
exe "hi! PMenuSel".		s:fg_lightwhite.	s:bg_darkgreen.		s:fm_none
exe "hi! PMenuSBar".	s:fg_darkscroll.	s:bg_lightscroll.	s:fm_none
exe "hi! PMenuThumb".	s:fg_lightscroll.	s:bg_darkscroll.	s:fm_none

exe "hi! StatusLine".	s:fg_darkblack.		s:bg_darkgreen.		s:fm_none
exe "hi! StatusLineNC".	s:fg_darkblack.		s:bg_darkwhite.		s:fm_none
hi! def link TabLine		StatusLineNC
hi! def link TabLineSel		StatusLine
hi! def link TabLineFill	TabLine

exe "hi! NonText". 		s:fg_darkcyan.		s:bg_none.			s:fm_none
exe "hi! Visual".		s:fg_darkblue.		s:bg_darkwhite.		s:fm_none
exe "hi! CursorLine".	s:fg_darkblue.		s:bg_darkcyan.		s:fm_none
exe "hi! VertSplit".	s:fg_lightwhite.	s:bg_none.			s:fm_none
hi! def link LineNr			NonText

" INFO NERDTree colors

exe "hi! NERDTreeDir".	s:fg_lightcyan.		s:bg_darkblue.		s:fm_none
hi! def link NERDTreePart				NERDTreeDir
hi! def link NERDTreePartFile			NERDTreeDir
hi! def link NERDTreeExecFile			NERDTreeDir
hi! def link NERDTreeDirSlash			NERDTreeDir
hi! def link NERDTreeBookmarksHeader	NERDTreeDir
hi! def link NERDTreeBookmarksLeader	NERDTreeDir
hi! def link NERDTreeBookmarkName		NERDTreeDir
hi! def link NERDTreeBookmark			NERDTreeDir
hi! def link NERDTreeToggleOn			NERDTreeDir
hi! def link NERDTreeToggleOff			NERDTreeDir
hi! def link NERDTreeLinkTarget			NERDTreeDir
hi! def link NERDTreeLinkFile			NERDTreeDir
hi! def link NERDTreeLinkDir			NERDTreeDir
hi! def link NERDTreeDir				NERDTreeDir
hi! def link NERDTreeUp					NERDTreeDir
hi! def link NERDTreeFile				NERDTreeDir
hi! def link NERDTreeCWD				NERDTreeDir
hi! def link NERDTreeOpenable			NERDTreeDir
hi! def link NERDTreeClosable			NERDTreeDir
hi! def link NERDTreeIgnore				NERDTreeDir
hi! def link NERDTreeRO					NERDTreeDir
hi! def link NERDTreeBookmark			NERDTreeDir
hi! def link NERDTreeFlags				NERDTreeDir
hi! def link NERDTreeCurrentNode		NERDTreeDir

exe "hi! NERDTreeHelp".	s:fg_lightyellow.	s:bg_darkblue.		s:fm_none
hi! def link NERDTreeHelpKey			NERDTreeHelp
hi! def link NERDTreeHelpCommand		NERDTreeHelp
hi! def link NERDTreeHelpTitle			NERDTreeHelp

" INFO Annotations
"
" *Cursor       Normal colors reversed

"hi Search		guifg=black		guibg=orange
"hi IncSearch	guifg=black		guibg=yellow

"hi DiffChange	guifg=black		guibg=darkGreen	
"hi DiffText		guifg=black		guibg=olivedrab
"hi DiffAdd		guifg=black		guibg=slateblue
"hi DiffDelete	guifg=black   	guibg=coral

"hi Folded		guibg=#00aaaa		guifg=#000000
"hi FoldColumn	guibg=#00aaaa		guifg=#000000
"hi CIf0		guifg=gray

" Tab styling from http://stackoverflow.com/questions/7238113/customising-the-colours-of-vims-tab-bar
" :hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
" :hi TabLine ctermfg=Blue ctermbg=Yellow
" :hi TabLineSel ctermfg=Red ctermbg=Yellow
" This line affects the window counter per tab:
" :hi Title ctermfg=LightBlue ctermbg=Magenta

" Group descriptions from solarized
" *Normal          any text that matches no syntax pattern
" *Comment         any comment
" *Constant        any constant
"  String          a string constant: "this is a string"
"  Character       a character constant: 'c', '\n'
"  Number          a number constant: 234, 0xff
"  Boolean         a boolean constant: TRUE, false
"  Float           a floating point constant: 2.3e10
" *Identifier      any variable name
"  Function        function name (also: methods for classes)
" *Statement       any statement
"  Conditional     if, then, else, endif, switch, etc.
"  Repeat          for, do, while, etc.
"  Label           case, default, etc.
"  Operator        "sizeof", "+", "*", etc.
"  Keyword         any other keyword
"  Exception       try, catch, throw
" *PreProc         generic Preprocessor
"  Include         preprocessor #include
"  Define          preprocessor #define
"  Macro           same as Define
"  PreCondit       preprocessor #if, #else, #endif, etc.
" *Type            int, long, char, etc.
"  StorageClass    static, register, volatile, etc.
"  Structure       struct, union, enum, etc.
"  Typedef         A typedef
" *Special         any special symbol
"  SpecialChar     special character in a constant
"  Tag             you can use CTRL-] on this
"  Delimiter       character that needs attention
"  SpecialComment  special things inside a comment
"  Debug           debugging statements
" *Underlined      text that stands out, HTML links
" *Ignore          left blank, hidden  |hl-Ignore|
" *Error           any erroneous construct
" *Todo            anything that needs extra attention; mostly the
"                  keywords TODO FIXME and XXX

" Color names from zenburn
" hi Question        guifg=#ffffff gui=bold
" hi SpecialKey      guifg=#9ece9e
" hi VisualNOS       guifg=#333333 guibg=#f18c96 gui=bold,underline
" hi WildMenu        guibg=#2c302d guifg=#cbecd0 gui=underline
