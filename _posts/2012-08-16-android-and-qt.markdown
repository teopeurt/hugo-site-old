---
layout: post
title: What is QT on Android?
tags: [android, code, framework]
image:
  feature: abstract-6.jpg
  credit: dargadgetz
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/
comments: false
share: true
---


Do you want to port those brilliant Nokia applications and QT based apps to Android without rewriting your code or having to learn what a Java Interface is? Necessitas to the rescue! - though you still have to learn Java if you want to be serious on the Android, but I digress.

Necessitas allows you port and write QT based applications for Android. For those who are familiar with QT - it is/was the best C++ framework ever invented - opinions clearly my own.

Look [here][1] for good introduction and the [community][2] if you want to tinker.

> Necessitas is a KDE community project aimed to provide an easy way to develop Qt apps on Android platform.
> Necessitas comes from the need of exploiting the power and the multi-platform capabilities of the Qt  framework on the Android world. It was born as a concept work which demonstrates the flexibility of Qt and, today, strives to become a fully  working development solution for Android.

It was the brainchild of 31 year old Romanian Bogdan Vatra. He did an interview with [Behind KDE][3]. His introduction to the Android platform SDK was similar to mine - doing custom Android builds on embedded devices, though mine was at TomTom and Renault. Here is an excerpt of how he started work on Necessitas.

> **How old is the Qt on Android project?  Who started it?**
>
> I started to port Qt to Android at the end of 2009. When I started it the name was android-lighthouse but I had to change the name to "Necessitas" just before the SDK release because Nokia and Google didn't allow me to use Qt and/or Android words.

> [Lighthouse][4], a research project started by Nokia, helped me a lot. This project made my life very easy, the changes I had to make were only a small set of changes into the Qt tree. The "biggest change" was to add another shared memory implementation based on ashmem.

This post is part of a series of post on QT. I will actually go through the steps for creating an android application using the brilliant QT Quick and [QML][5].

[1]: http://necessitas.kde.org/
[2]: http://community.kde.org/Necessitas
[3]: http://www.behindkde.org/node/925
[4]: http://labs.qt.nokia.com/
[5]: http://qt.nokia.com/qtquick/
