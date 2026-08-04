" :help highlight-groups
" :help group-name
" https://mycolor.space/

hi clear
syntax reset
let g:colors_name = "voidstar"

let s:empty  = ""
let s:none   = "none"
let s:dark   = "302f2d" " background
let s:gray1  = "2e3c43" " selection
let s:gray2  = "546e7a" " comment
let s:white  = "eeffff" " text
let s:orange = "f78c6c" " keyword
let s:purple = "c792ea" " const
let s:green  = "98c379" " type
let s:yellow = "ffcb6b" " string
let s:blue   = "66a2d4" " function

function <sid>hi(group, guifg, guibg)
	if a:guifg != ""
		exec "hi " . a:group . " guifg=#" . a:guifg
	endif
	if a:guibg != ""
		exec "hi " . a:group . " guibg=#" . a:guibg
	endif
	exec "hi " . a:group . " gui=none"
endfunction

" Vim editor colors
call <sid>hi("Normal",        s:white,  s:dark)
call <sid>hi("FoldColumn",    s:white,  s:dark)
call <sid>hi("Directory",     s:blue,   s:empty)
call <sid>hi("MatchParen",    s:white,  s:gray2)
call <sid>hi("Question",      s:orange, s:empty)
call <sid>hi("Search",        s:empty,  s:yellow)
call <sid>hi("SpecialKey",    s:gray2,  s:empty)
call <sid>hi("Visual",        s:white,  s:gray2)
call <sid>hi("WildMenu",      s:empty,  s:yellow)
call <sid>hi("Cursor",        s:dark,   s:white)
call <sid>hi("NonText",       s:gray2,  s:empty)
call <sid>hi("StatusLine",    s:white,  s:gray1)
call <sid>hi("StatusLineNC",  s:gray2,  s:dark)
call <sid>hi("LineNr",        s:gray2,  s:dark)
call <sid>hi("CursorLineNr",  s:white,  s:dark)
call <sid>hi("VertSplit",     s:gray1,  s:gray1)
call <sid>hi("CursorLine",    s:empty,  s:gray1)
call <sid>hi("QuickFixLine",  s:empty,  s:gray1)
call <sid>hi("PMenu",         s:white,  s:gray1)
call <sid>hi("PMenuSel",      s:gray1,  s:yellow)
call <sid>hi("PMenuSbar",     s:empty,  s:gray2)
call <sid>hi("ErrorMsg",      s:orange, s:dark)
call <sid>hi("User1",         s:white,  s:gray1)
call <sid>hi("User2",         s:white,  s:gray1)
call <sid>hi("User3",         s:white,  s:gray1)
call <sid>hi("User4",         s:white,  s:gray1)

" Standard syntax highlighting
call <sid>hi("Comment",       s:gray2,  s:empty)
call <sid>hi("Todo",          s:yellow, s:gray1)
" Consts
call <sid>hi("Constant",      s:purple, s:empty)
call <sid>hi("String",        s:yellow, s:empty)
call <sid>hi("Character",     s:yellow, s:empty)
" Identifiers
call <sid>hi("Identifier",    s:white,  s:empty)
call <sid>hi("Function",      s:blue,   s:empty)
" Preprocessor
call <sid>hi("PreProc",       s:orange, s:empty)
call <sid>hi("Include",       s:orange, s:empty)
call <sid>hi("Define",        s:orange, s:empty)
call <sid>hi("Macro",         s:orange, s:empty)
call <sid>hi("PreCondit",     s:orange, s:empty)
" Specials
call <sid>hi("Special",       s:purple, s:empty)
" Types
call <sid>hi("Type",          s:green,  s:empty)
call <sid>hi("StorageClass",  s:orange, s:empty)
call <sid>hi("Structure",     s:orange, s:empty)
call <sid>hi("Typedef",       s:orange, s:empty)
" Statements
call <sid>hi("Statement",     s:orange, s:empty)
" Tag generated
call <sid>hi("TagFunction",   s:blue,   s:empty)
call <sid>hi("TagMacroConst", s:purple, s:empty)
call <sid>hi("TagMacroFunc",  s:blue,   s:empty)
call <sid>hi("TagEnumerator", s:purple, s:empty)
call <sid>hi("TagType",       s:green,  s:empty)

call <sid>hi("VertSplit",     s:gray1,  s:gray1)
call <sid>hi("WinSeparator",  s:gray1,  s:gray1) " For neovim vert split

delfunction <sid>hi
unlet s:empty s:none s:dark s:gray1 s:gray2 s:white s:orange s:purple s:green s:yellow s:blue
