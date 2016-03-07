---
categories: null
comments: false
date: 2012-09-04T00:00:00Z
published: true
share: true
title: Rails - Efficiency in Production
url: /2012/09/04/rails-efficiency-in-production/
categories: ["programming", "hacking"]
---

Rails Asset Pipeline - rails book

Efficiency in Production

One of the best things about the asset pipeline is that it automatically results in assets that are optimized to be efficient in a production application.
Traditional methods for organizing CSS and JavaScript involve splitting functionality into separate files and using nice formatting (with lots of indentation). While convenient for the programmer, this is inefficient in production; including multiple full-sized files can significantly slow page-load times (one of the most important factors affecting the quality of the user experience). With the asset pipeline, in production all the application stylesheets get rolled into one CSS file (application.css), all the application JavaScript code gets rolled into one JavaScript file (javascripts.js), and all such files (including those in lib/assets and vendor/assets) are minified to remove the unnecessary whitespace that bloats file size.

As a result, we get the best of both worlds: multiple nicely formatted files for programmer convenience, with single optimized files in production.
