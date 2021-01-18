"======================================================================
" shitespace.vim
"
" Shitespace -- Show bad whitespace
"
" Description:
"
" Instantly spot bothersome bad whitespace.
"
" Instructions:
"
" Install this file in your ~/.vim/plugins directory. That's all you should
" have to do to start recognizing bad whitespace.
"
" Configuration:
"
" Shown are the default configuration values:
" let g:shitespaceDefaultOn = 1
" let g:shitespaceColor = 'red'
" let g:shitespaceMatch = '/\s\+$\| \+\ze\t/'
"
" If you wish to have a shortcut to toggle Shitespace on and off, add this to
" your ~/.vimrc:
" let g:shitespaceShortcut = '<F5>' " (default none)
"
" Cookbook:
"
" If you don't like tabs, stick this in your ~/.vimrc:
" let g:shitespaceMatch = '/\s\+$\|\t\+/'
"
" If you don't like mixed spaces-and-tabs, stick this in your ~/.vimrc:
" let g:shitespaceMatch = '/\s\+$\| \+\t\+\|\t\+ \+/'
"
" Updated: 2021-01-18
" Version: 0.1.0
" Source:  TODO
" Project: https://github.com/h3xx/vim-shitespace
" Author:  Dan Church [ h3xx{azzat}gmx{dizzot}com; h3xx@GitHub ]
" License: GPLv3 (http://www.gnu.org/licenses/gpl.html)
"
" Copyright (C) 2015-2021 Dan Church
" License GPLv3+: GNU GPL version 3 or later (http://gnu.org/licenses/gpl.html).
" This is free software: you are free to change and redistribute it. There is
" NO WARRANTY, to the extent permitted by law.

if exists('g:shitespaceShortcut')
	" e.g. let g:shitespaceShortcut = '<F5>'
	exec 'imap <silent> ' . g:shitespaceShortcut . " <C-o>:call Shitespace_toggle()<cr>"
	exec 'nmap <silent> ' . g:shitespaceShortcut . " :call Shitespace_toggle()<cr>"
endif

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
function! Shitespace_toggle()
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

if !exists('g:shitespaceDefaultOn') || g:shitespaceDefaultOn
	call Shitespace_toggle()
endif

" vi: noet sts=4 sw=4 ts=4
