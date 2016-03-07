---
comments: false
date: 2011-06-22T00:00:00Z
image:
  credit: dargadgetz
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/
  feature: abstract-6.jpg
share: true
tags:
- android
- code
- framework
title: How Not to Hack the Android Framework
url: /2011/06/22/Hacking-Android-FrameWork/
categories: ["programming", "mobile"]
---

<p class="meta">22 June 2011 - Amsterdam</p>

This is a short dump of my notes to a customer who hacked the Android framework to create a custom build for their project. The resulting system was unstable and my job was to find out why (and fix it).

> Comparing a stock android emulator (both 2.2 and 2.3), we see comparable values for highly graphic intensive apps.
>
> The difference in system-server could be down to our additions and the amount of processes - for each process needs to
> communicate it's state and activities to system_server (package manager, activity manager etc, ContentProvider resolver), the more the process, the more
> the messages as the framework need to know which activities, services, providers and broadcast is running.
>
>
> I have instrumented the framework and could not find any extra  messages due to increased CotentProvider usages or broadcast recievers, although I can now track the message to the actual package/classs
> the quantity/frequencty was sufficiently low.
>
> system_server crashes because it has run out of FD(file descriptors!).
