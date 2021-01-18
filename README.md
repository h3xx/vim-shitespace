# Vim Shitespace

Highlights all the bad whitespace in your files:

- Whitespace at the end of lines
- Spaces followed by tabs
- Mixed tabs and spaces (if configured)

![example highlighting](../images/example.png)

## Installation

Vim 8+:

    mkdir -p ~/.vim/pack/dist/start
    git clone https://github.com/h3xx/vim-shitespace.git ~/.vim/pack/dist/start/vim-shitespace

Vim 7 and older:

    mkdir -p ~/.vim/plugin
    wget -O ~/.vim/plugin/shitespace.vim https://raw.githubusercontent.com/h3xx/vim-shitespace/main/plugin/shitespace.vim

## Contributing

Send me a pull request! Keep in mind I really want to keep this plugin lightweight.

## License

Copyright (C) 2021 Dan Church.

License GPLv3+: GNU GPL version 3 or later (http://gnu.org/licenses/gpl.html).
This is free software: you are free to change and redistribute it. There is NO
WARRANTY, to the extent permitted by law.
