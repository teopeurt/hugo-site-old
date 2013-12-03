---
layout: post
title: "Distributed Conputing With Ruby"
date: 2012-09-03 23:26
comments: false
categories: 
published: false
---

sources/links
https://github.com/celluloid/dcell
https://github.com/mperham/sidekiq
https://github.com/celluloid/celluloid

Reel is a fast Celluloid::IO-powered web server which supports both non-blocking and blocking modes of operation:

https://github.com/celluloid/reel

This release brings three major new features:

1. WebSockets: Reel now supports WebSockets in addition to standard HTTP connections. An example of using WebSockets is available here:

https://github.com/celluloid/reel/blob/master/examples/websockets.rb

This example shows how to do a message fanout from a single actor to several websockets connections. This shows how simple it is to use Reel and Celluloid to implement WebSockets publish/subscribe systems.

2. Rack support: Reel now provides a Rack adapter, although the Rack API severely limits the kinds of end-to-end streaming Reel is capable of

3. Octarine support: Reel now lets you write simple Sinatra-like applications using the Octarine gem:

    class MyApp
      include Reel::App

      get '/foobar' { [200, {}, "hello world" }
    end

    MyApp.new('127.0.0.1', 1234)

-- 
Tony Arcieri