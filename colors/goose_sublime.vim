" Name:         hgoose's goose_sublime
" Description:  Custom colorscheme
" Author:       hgoose
" Maintainer:   hgoose
" License:      vim license (see `:help license`)
" Last Updated: Jan 06, 2023 

set background=dark

hi clear
let g:colors_name = 'goose_sublime'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

syntax on

syntax match method /\.\w*/

" syntax match FunctionCall "\<\w\+\>"

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#000000', '#ca1243', '#2a871f', '#c18401',
        \ '#2f6aea', '#a626a4', '#0184bc', '#272822', '#808080', '#ca1243',
        \ '#2a871f', '#c18401', '#2f6aea', '#a626a4', '#0184bc', '#ffffff']
  if has('nvim')
    let g:terminal_color_0 = '#000000'
    let g:terminal_color_1 = '#ca1243'
    let g:terminal_color_2 = '#2a871f'
    let g:terminal_color_3 = '#c18401'
    let g:terminal_color_4 = '#2f6aea'
    let g:terminal_color_5 = '#a626a4'
    let g:terminal_color_6 = '#0184bc'
    let g:terminal_color_7 = '#272822'
    let g:terminal_color_8 = '#808080'
    let g:terminal_color_9 = '#ca1243'
    let g:terminal_color_10 = '#2a871f'
    let g:terminal_color_11 = '#c18401'
    let g:terminal_color_12 = '#2f6aea'
    let g:terminal_color_13 = '#a626a4'
    let g:terminal_color_14 = '#0184bc'
    let g:terminal_color_15 = '#ffffff'
  endif
  if get(g:, 'goose_sublime_transp_bg', 0) && !has('gui_running')
    hi Normal guifg=#000000 guibg=NONE gui=NONE cterm=NONE
  else
    hi Normal guifg=#ffffff guibg=#272822 gui=NONE cterm=NONE
  endif
  hi EndOfBuffer guifg=#272822 guibg=NONE gui=NONE cterm=NONE
  hi Statusline guifg=#000000 guibg=NONE gui=bold cterm=bold
  hi StatuslineNC guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi StatuslineTerm guifg=#000000 guibg=NONE gui=bold cterm=bold
  hi StatuslineTermNC guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  " hi VertSplit guifg=#272822 guibg=#ff00ff gui=NONE cterm=NONE
  hi VertSplit guifg=#f0f0f0 guibg=#272822 gui=NONE cterm=NONE
  hi Pmenu guifg=NONE guibg=#272822 gui=NONE cterm=NONE
  hi PmenuSel guifg=#ffffff guibg=#272822 gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#272822 gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE guibg=#272822 gui=NONE cterm=NONE
  hi TabLine guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi TabLineFill guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi ToolbarLine guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
  hi ToolbarButton guifg=NONE guibg=NONE gui=bold cterm=bold
  hi NonText guifg=#272822 guibg=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#272822 guibg=NONE gui=NONE cterm=NONE
  hi Folded guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=#32344a gui=NONE cterm=NONE
  hi VisualNOS guifg=NONE guibg=#F9FF3C gui=NONE cterm=NONE
  hi LineNr guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi FoldColumn guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi CursorColumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi QuickFixLine guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi SignColumn guifg=#000000 guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Sign guifg=#000000 guibg=NONE#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Underlined guifg=#2f6aea guibg=NONE gui=underline cterm=underline
  hi Error guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
  hi ErrorMsg guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
  hi ModeMsg guifg=#000000 guibg=NONE gui=bold cterm=bold
  hi WarningMsg guifg=#c18401 guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#2a871f guibg=NONE gui=bold cterm=bold
  hi Question guifg=#2a871f guibg=NONE gui=bold cterm=bold
  hi Todo guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=#F9FF3C guibg=NONE gui=NONE cterm=NONE
  hi Search guifg=#ffffff guibg=#32344a gui=NONE cterm=NONE
  hi IncSearch guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
  " hi Cursor guifg=#ffffff guibg=NONE#000000 gui=NONE cterm=NONE
  hi Cursor guifg=#f300ff guibg=NONE gui=NONE cterm=NONE
  hi lCursor guifg=#000000 guibg=NONE gui=NONE cterm=NONE
  hi DiffAdd guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi DiffChange guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi DiffText guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi DiffDelete guifg=#f9c9c9 guibg=NONE gui=NONE cterm=NONE
  hi SpellBad guifg=#ca1243 guibg=NONE guisp=#ca1243 gui=undercurl cterm=underline
  hi SpellCap guifg=#2a871f guibg=NONE guisp=#2a871f gui=undercurl cterm=underline
  hi SpellLocal guifg=#0184bc guibg=NONE guisp=#0184bc gui=undercurl cterm=underline
  " hi SpellRare guifg=#a626a4 guibg=NONE guisp=#a626a4 gui=undercurl cterm=underline
  hi SpellRare guifg=#07D7E5 guibg=NONE guisp=#a626a4 gui=undercurl cterm=underline
  hi Identifier guifg=#E5E5E5 guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#F300FF guibg=NONE gui=NONE cterm=NONE
  hi Constant guifg=#F9FF3C guibg=NONE gui=NONE cterm=NONE
  " hi String guifg=#00DB2B guibg=NONE gui=NONE cterm=NONE
  hi String guifg=#FFCB6B guibg=NONE gui=NONE cterm=NONE
  hi pythonFunction guifg=#45FFC8 guibg=NONE gui=NONE cterm=NONE
  hi method guifg=#45FFC8 guibg=NONE gui=NONE cterm=NONE
  " hi FunctionCall guifg=#FFCB6B guibg=NONE gui=NONE cterm=NONE
  hi Function guifg=#45FFC8 guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#F300FF guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#0184bc guibg=NONE gui=NONE cterm=NONE
  hi Tag guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
  hi Delimiter guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
  hi Type guifg=#5CF1FF guibg=NONE gui=NONE cterm=NONE
  hi Directory guifg=#ffffff guibg=NONE gui=bold cterm=bold
  hi Comment guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi Conceal guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Title guifg=#ca1243 guibg=NONE gui=bold cterm=bold
  hi qfError guifg=#d70000 guibg=NONE gui=NONE cterm=NONE
  hi! link colortemplateKey Statement
  " hi! link colortemplateAttr String
  hi! link vimNotation Type
  hi! link vimFuncSID PreProc
  hi! link vimHiTerm Identifier
  hi! link helpNotVi Comment
  hi! link helpExample PreProc
  hi! link gitCommitSummary Title
  hi! link cocErrorSign Type
  " hi! link diffAdded String
  hi diffRemoved guifg=#d70000 guibg=NONE gui=NONE cterm=NONE
  hi asciidoctorOption guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi asciidoctorLiteralBlock guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi asciidoctorIndented guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  hi SelectDirectoryPrefix guifg=#808080 guibg=NONE gui=NONE cterm=NONE
  unlet s:t_Co
  finish
endif


