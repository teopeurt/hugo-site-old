---
categories: null
comments: false
date: 2012-08-16T00:00:00Z
published: true
share: true
title: RBENV Keeping Things Local
url: /2012/08/16/rben-keeping-things-local/
---

The benefits of keeping things local, 

Working across machines- I have 4 physical machines I use daily and countless servers dotted around the world, I can never remember the shell commands for any particular project so I created build scripts. 

I always hated having to rebuild dev environments hence I loved RVM. The [RBENV][1] came along and I fell in love. Used in conjunction with a [Bundler][3] and `--path` option, one can get a pretty awesome build going that is isolated and local just to that directory!

[1]: https://github.com/sstephenson/rbenv/
[2]: https://github.com/sstephenson/ruby-build/
[3]: http://gembundler.com/