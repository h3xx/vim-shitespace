# Vim Shitespace

> **shitespace:** Unwanted or unintended whitespace, commonly found when
> programming but also in prose.<br />
> *I spent ages tidying up that file for you, next time try leaving out the
> shitespace when you write it*
>
> &mdash; [Urban Dictionary: *shitespace*](https://www.urbandictionary.com/define.php?term=shitespace)

Or, if anyone asks, it's short for "show whitespace." ;-)

Highlights all the bad whitespace in your files:

- Whitespace at the end of lines
- Spaces followed by tabs
- Mixed tabs and spaces (if configured)

![example highlighting](../images/example.png)

## Installation

Shitespace is on by default. All you have to do to start using it is to put it
in a place where Vim will load it:

Vim 8+:

```sh
mkdir -p ~/.vim/pack/dist/start
git clone https://github.com/h3xx/vim-shitespace.git ~/.vim/pack/dist/start/vim-shitespace
```

Vim 7 and older:

```sh
mkdir -p ~/.vim/{autoload,plugin}
wget -O ~/.vim/autoload/shitespace.vim https://raw.githubusercontent.com/h3xx/vim-shitespace/main/autoload/shitespace.vim
wget -O ~/.vim/plugin/shitespace.vim https://raw.githubusercontent.com/h3xx/vim-shitespace/main/plugin/shitespace.vim
```

## Configuration

Copy and modify these default values to your `~/.vimrc` to tweak how Shitespace
works:

```vim
let g:shitespaceDefaultOn = 1
let g:shitespaceColor = 'red'
let g:shitespaceMatch = '/\s\+$\| \+\ze\t/'
```

## Configuration Cookbook

If you don't want Shitespace on by default, instead activating it with a
keystroke:

```vim
let g:shitespaceDefaultOn = 0
let g:shitespaceShortcut = '<F5>'
```

## Alternate Regexes

If you don't like mixed spaces-and-tabs, stick this in your ~/.vimrc:

```vim
let g:shitespaceMatch = '/\s\+$\| \+\t\+\|\t\+ \+/'
```

If you don't like tabs used to indent (but they're okay elsewhere in the line):

```vim
let g:shitespaceMatch = '/\s\+$\|^\t\+/'
```

If you don't like spaces used to indent:

```vim
let g:shitespaceMatch = '/\s\+$\|^ \+/'
```

If you don't like tabs AT ALL:

```vim
let g:shitespaceMatch = '/\s\+$\|\t\+/'
```

## Contributing

Send me a pull request! Keep in mind I really want to keep this plugin
lightweight.

## License

Copyright (C) 2021-2022 Dan Church.

License GPLv3+: GNU GPL version 3 or later (http://gnu.org/licenses/gpl.html).
This is free software: you are free to change and redistribute it. There is NO
WARRANTY, to the extent permitted by law.
