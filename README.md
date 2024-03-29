vim-a2
======

The **vim-a2** plugin adds [A2 Programming Language][] support for Vim
including syntax highlighting.

Copyright © 2022 Taeber Rapczak \<taeber@rapczak.com>

License: [MIT](LICENSE)

![Screenshot of plugin in use](screenshot.png)


Installation
------------

Using [Vim 8 packages](http://vimhelp.appspot.com/repeat.txt.html#packages):

```
git clone https://github.com/taeber/vim-a2 ~/.vim/pack/plugins/start/vim-a2
```

Using [pathogen](https://github.com/tpope/vim-pathogen):

```
git clone https://github.com/taeber/vim-a2 ~/.vim/bundles/vim-a2
```


Configuration
-------------

Too much color? To disable highlighting identifiers:

```
:let g:a2_highlight_idents=0
:e
```


See Also
--------

* [A2 Programming Language][]
* _[Writing Vim Syntax Plugins](https://thoughtbot.com/blog/writing-vim-syntax-plugins)_
* _[Create your own syntax files](https://vim.fandom.com/wiki/Creating_your_own_syntax_files)_


[A2 Programming Language]: https://github.com/taeber/a2lang
