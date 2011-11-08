My [Vim](http://www.vim.org) configuration directory. The project contains a
rakefile for syncing files with your vim configuration directory and updating
the plugins.

Plugins
-------

- [pathogen](https://github.com/tpope/vim-pathogen)

  This is a wonderful plugin for handling your configuration. If you don’t
  use it you should.

- [fugitive.vim](https://github.com/tpope/vim-fugitive)
  If you use git you **must** learn to use this plugin.
  [Drew Neil](https://github.com/nelstrom) has done a great series of
  [screencasts](http://vimcasts.org/) about it.

- [command-t](https://wincent.com/products/command-t)

  Citing homepage *The Command-T plug-in for VIM provides an extremely
  fast, intuitive mechanism for opening files with a minimal number of
  keystrokes*. Believe him, it’s really fast!

- [NERDTree](http://www.vim.org/scripts/script.php?script_id=1658)

  This is a very famous plugins and provides a very nice tree filesystem
  tree.

- [rails.vim](http://rails.vim.tpope.net/)

  I love rails and I love vim. Someone would say I love tpope. But
  everyone loves tpope. BTW, this plugin is essential if you are a Rails
  developer.

- [snipMate](https://github.com/garbas/vim-snipmate)

  This plugin tries to implement some features of the snippet feature of
  Textmate. I use it very often, you will.

- [Ack.vim](http://www.vim.org/scripts/script.php?script_id=2572)

  This plugin is the Vim interface to [ack](http://betterthangrep.com/). I
  recommend to get the latest version of ack from the website.

- [vim-smartword](https://github.com/kana/vim-smartword)

  It provides word motions that are smarter in some sense. It's a little
  nice plugin.

- [codepath](http://www.vim.org/scripts/script.php?script_id=3435)

  I personally wrote this one and I use it to get the current project
  directory based on the assumption that all your projects are under the
  same *code* path.

Rake tasks
----------

[Rake](http://rake.rubyforge.org/) is the ruby version of make. This
project contains the following Rake tasks:

- init

  You have to run it to ste up your installation

- update\_bundles

  It updates all the bundles repository from the remote source.

- sync

  It copies all the project files into your home directory.

The sync task is the default one.

TODO
----

- add all the plugins used to the README.
- reorganize snippets and filetype configuration
- write documentation for configurations.

Copyright
---------

Copyright 2011 Luca Pette

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
“Software”), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
