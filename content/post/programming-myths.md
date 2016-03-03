+++
date = "2016-03-02T07:55:30+01:00"
draft = true
title = "programming myths"

+++

# New Programmer Programming Myths

Its a PITA when introducing programming to beginners that there is some unwritten rule somewhere that certain things are just too hard to tackle at first. So the student is introduced to crappy concepts and thus doestn touch the "advance" stuff until it is too late - i.e. they are sat there wondering why their production code is crap, slow and buggy.

## Dont talk about threads
This is annoying - no matter what you feel about threads, we live in an asyn world, it's fine not to talk about about threads but what are my alternatives. I dont need to know how to implement an aysnc/promise/background_task, but at least tell me I *need* it and show me how to use. Tell me why it is important in a system.

## Authentication and Authorisation : Security is for Others
There is this thing called security which we drum into students to fear like a second coming of bathzeedar. It is bloody important yet most introductory web security start with HTTP Basic Auth! What? When have you ever seen a decent website using bloody HTTP Basic auth? Don't mention the fact that SSL is never introduced, any auth methods are never explained, and what does hashing and encryption even mean?

## My Language/IdioM is the best
Nuff said on this crap, it's the need and ego of man to be king and he brings his religious crap with him. A typical programming class should include 3 languages (at least 2 scripting languages and at least one compiled 'c' language), 2 or more queue/broker, and 2 or more databases and either NoSQL and SQL databases. Advance students can then debate on the merits on functional/Procedural/OO style while solving the same problem in each style.
