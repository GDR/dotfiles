# Dotfiles

This is my personal set of dotfiles, that I use on my Arch Linux laptop.
### What I have?
* [ZSH] &mdash; alternative unix shell
    * [Antigen] &mdash; zsh bundler
    * [Oh-my-zsh] &mdash; set of awesome zsh utils
* [Awesome WM] &mdash; tile manger
* [Alacritty] &mdash; awesome lightweight terminal emulator
* [Compton] &mdash; lightweight compositor for Xorg
### How to use

At first you need to install yadm from AUR:
```bash
$ yay -S yadm
```
Then you can use yadm for auto installing all needed dotfiles:
```bash
$ yadm clone git@github.com:GDR/dotfiles.git
```

[ZSH]: <https://www.zsh.org/>
[Oh-my-zsh]: <https://github.com/robbyrussell/oh-my-zsh>
[Antigen]: <https://github.com/zsh-users/antigen>
[Awesome WM]: <https://github.com/awesomeWM/awesome>
[Alacritty]: <https://github.com/jwilm/alacritty>
[Compton]: <https://github.com/chjj/compton>
### License
```
The MIT License (MIT)

Copyright (c) 2015 Chris Kibble

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
