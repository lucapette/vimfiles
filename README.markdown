My [Vim](http://www.vim.org) configuration directory.

I'm really thankful [Bram Moolenaar](http://www.moolenaar.net/) for his
generous work on the best editor ever. And I want to say thank you to
[tpope](http://tpo.pe/) too. Without his incredible amount of work, I would
have been using some crappy editor out there.

**Do not use my configuration**. Read it to learn something, to get inspired.
Don't hesitate to contact me for any further information but, please, build
your own configuration. Read [Lazy Modern
Configuration](http://lucapette.com/vim/rails/vim-for-rails-developers-lazy-modern-configuration/)
to better understand what I mean.

I'm continuously adding comments to all the configuration files.

Bundles
-------

I'm using pathogen.vim to handle all my plugins in combination with git
submodules. It's a quite common setup. Here a list of all my bundles. Please
consider, it could be a little outdated.


- [Ack.vim](http://www.vim.org/scripts/script.php?script_id=2572)
  This plugin is the Vim interface to [ack](http://betterthangrep.com/). I
  recommend to get the latest version of ack from the website.

- [codepath](http://www.vim.org/scripts/script.php?script_id=3435)
  I personally wrote this one and I use it to get the current working based on
  the assumption that all your projects are under the same *code* path.

- [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
  Vim files for [coffeescript](http://coffeescript.org/). Very handy, you can
  have a live preview of the generated JavaScript.

- [vim-commentary](https://github.com/tpope/vim-commentary)
  Awesome commenting plugin. It's the only I know that follows the *Vim way*.

- [ctrlp.vim](http://kien.github.com/ctrlp.vim/)
  It's the best fuzzy file finder ever. It has a lot of unique and crazy
  feature. I tried a lot of them and this is the best one. Period.

- [vim-endwise](https://github.com/tpope/vim-endwise)
  This plugin will help you to end structures for Ruby, Vimscript and other
  languages.

- [vim-pathogen](https://github.com/tpope/vim-pathogen)
  This is a wonderful plugin for handling your configuration. If you don't
  use it you should.

- [vim-fugitive](https://github.com/tpope/vim-fugitive)
  If you use git you **must** learn to use this plugin.
  [Drew Neil](https://github.com/nelstrom) has done a great series of
  [screencasts](http://vimcasts.org/) about it.

- [NERDTree](http://www.vim.org/scripts/script.php?script_id=1658)
  You know this one. And if you don't know it, go straight to try it.

- [rails.vim](http://rails.vim.tpope.net/)
  I love rails and I love Vim. Someone would say I love tpope. But everyone
  loves tpope. BTW, this plugin is essential if you are a Rails developer.

- [snipMate](https://github.com/garbas/vim-snipmate)
  This plugin tries to implement some features of the snippet feature of
  Textmate. I use it very often, you will.

- [vim-smartword](https://github.com/kana/vim-smartword)
  It provides word motions that are smarter in some sense. It's a little
  nice plugin.

- [vim-git](https://github.com/tpope/vim-git)
  Vim Git Runtime files.

- [vim-jquery-doc](https://github.com/lucapette/vim-jquery-doc)
  Browse jQuery API doc quickly.

- [vim-liquid](https://github.com/tpope/vim-liquid)
  Vim Liquid runtime files with [Jekyll](http://jekyllrb.com/) enhancements.

- [vim-rake](https://github.com/tpope/vim-rake)
   It's like rails.vim without the rails.

- [vim-repeat](https://github.com/tpope/vim-repeat)
  It enables repeating supported plugin maps with `.`. A must-have.

- [vim-ruby](https://github.com/vim-ruby/vim-ruby)
  Vim/Ruby Configuration Files.

- [vim-ruby-doc](https://github.com/lucapette/vim-ruby-doc)
  Browse Ruby/RSpec/Rails doc quickly.

- [vim-snipmate](https://github.com/garbas/vim-snipmate)
  Nice snippets for Vim. This fork is far way of the original plugin.

- [vim-surround](https://github.com/tpope/vim-surround)
  Incredibly useful plugin for quoting stuff.

- [tabular](https://github.com/godlygeek/tabular)
  Vim script for text filtering and alignment. Is' very handy for tidying
  code.

- [vim-textobj-indent](https://github.com/kana/vim-textobj-indent)
  Text objects for indented blocks of lines.

- [vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock)
  A custom text object for selecting ruby blocks.

- [vim-visualstar](https://github.com/thinca/vim-visualstar)
  star for Visual-mode.

License
-------

Copyright (c) Luca Pette. Distributed under the same terms as Vim itself. See `:help license`.
