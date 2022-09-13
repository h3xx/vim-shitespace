" Shitespace -- Show bad whitespace
" Source: https://github.com/h3xx/vim-shitespace
" Author:  Dan Church [ h3xx{azzzzat}gmx{dizzzzot}com; h3xx@GitHub ]
" Last Change: 2022-09-13

if exists('g:shitespaceColor')
	let s:color = g:shitespaceColor
else
	let s:color = 'red'
endif
if exists('g:shitespaceMatch')
	let s:matchpat = g:shitespaceMatch
else
	" Show trailing whitespace and spaces before a tab
	let s:matchpat = '/\s\+$\| \+\ze\t/'
endif

let s:on = 0
function! shitespace#Toggle()
	let s:on = !s:on
	if s:on
		let l:matchcmd = 'match ExtraWhitespace ' . s:matchpat
		let l:hlcmd = 'hi ExtraWhitespace term=reverse ctermbg=' . s:color . ' guibg=' . s:color
		exe l:hlcmd
		aug Shitespace
			" If the user changes the colorscheme while Shitespace is on, keep
			" highlights.
			exe 'autocmd ColorScheme * ' . l:hlcmd
			exe 'autocmd BufEnter,WinEnter * ' . l:matchcmd
		aug END
	else
		hi clear ExtraWhitespace
		aug Shitespace
			au!
		aug END
	endif
endfunction

" vi: noet sts=4 sw=4 ts=4
