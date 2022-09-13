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
" Updated: 2022-09-13
" Version: 0.1.0
" Source:  https://github.com/h3xx/vim-shitespace
" Project: https://github.com/h3xx/vim-shitespace
" Author:  Dan Church [ h3xx{azzat}gmx{dizzot}com; h3xx@GitHub ]
" License: GPLv3 (http://www.gnu.org/licenses/gpl.html)
"
" Copyright (C) 2015-2022 Dan Church
" License GPLv3+: GNU GPL version 3 or later (http://gnu.org/licenses/gpl.html).
" This is free software: you are free to change and redistribute it. There is
" NO WARRANTY, to the extent permitted by law.

if exists('g:shitespaceShortcut')
	" e.g. let g:shitespaceShortcut = '<F5>'
	exec 'imap <silent> ' . g:shitespaceShortcut . " <C-o>:call shitespace#Toggle()<cr>"
	exec 'nmap <silent> ' . g:shitespaceShortcut . " :call shitespace#Toggle()<cr>"
endif

if !exists('g:shitespaceDefaultOn') || g:shitespaceDefaultOn
	call shitespace#Toggle()
endif

" vi: noet sts=4 sw=4 ts=4
