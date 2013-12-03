---
layout: post
title: "Making an EPUB Reader for Cocoa"
date: 2012-09-03 23:41
comments: false
categories: 
published: true
share: true
---

Source: http://stackoverflow.com/questions/1388467/reading-epub-format

The EPUB format brings together a bunch of different specifications / formats:

one to say what the content of the book should look like (a subset of XHTML 1.1 + CSS)
one to define a "manifest" that lists all of the files that make up that content (OPF, which is an XML file)
one to define how everything is packaged up (OEBPS: a zip file of everything in the manifest plus a few extra files)
The specs look a bit daunting but actually once you've got the basics (unzipping, parsing XML) down it's not particularly difficult or complex.

You'll need to work out how to download the EPUB, to unzip it somewhere, to parse the manifest and then to display the relevant content.

Some pointers if you're just starting out:

* parse xml
* unzip
* To display content just use a UIWebView for now.

Here's a high level step by step for your code:

1) create a view with a UIWebView

2) download the EPUB file

3) unzip it to a subdirectory in your app's documents folder using the zip library, linked above

4) parse the XML file at META-INF/container.xml (if this file doesn't exist the EPUB is invalid) using TBXML, linked above

5) In this XML, find the first "rootfile" with media-type application/oebps-package+xml. This is the OPF file for the book.

6) parse the OPF file (also XML)

7) now you need to know what the first chapter of the book is.

a) each <item> in the <manifest> element has an id and an href. Store these in an NSDictionary where the key is the id and the object is the href.

b) Look at the first <itemref> in the <spine>. It has an idref attribute which corresponds to one of the ids in (a). Look up that id in the NSDictionary and you'll get an href.

c) this is the the file of the first chapter to show the user. Work out what the full path is (hint: it's wherever you unzipped the zip file to in (3) plus the base directory of the OPF file in (6))

8) create an NSURL using fileURLWithPath:, where the path is the full path from (7c). Load this request using the UIWebView you created in (1).

You'll need to implement forward / backward buttons or swipes or something so that users can move from one chapter to another. Use the <spine> to work out which file to show next - the <itemrefs> in the XML are in the order they should appear to the reader.