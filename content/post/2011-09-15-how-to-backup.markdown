---
comment: true
comments: false
date: 2011-09-15T00:00:00Z
image:
  credit: dargadgetz
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/
  feature: abstract-3.jpg
share: true
tags:
- backup
- shell
- code
- rsync
title: How to BackUp
url: /2011/09/15/how-to-backup/
---

Don't break what works - this constant to re-invent the wheel! sheesh

is Emacs broken, is Gnutils?

After reading the very unhelpful advice on <a title="Ubuntu backup" href="https://help.ubuntu.com/community/BackupYourSystem">Ubuntu</a> on how to backup - I have stolen the old notes from jwz.

http://www.jwz.org/doc/backups.html
<ul>

	<li>You have a computer. It came with a hard drive in it. Go buy two more drives of the same size or larger. If the drive in your computer is SATA2, get SATA2. If it's a 2.5" laptop drive, get two of those. Brand doesn't matter, but physical measurements and connectors should match.</li>
	
	<li>Get external enclosures for both of them. The enclosures are under $30.</li>
	
	<li>Put one of these drives in its enclosure on your desk. Name it something clever like "Backup". If you are using a Mac, the command you use to back up is below, If you're using Linux, it's something a lot like that. If you're using Windows, go fuck yourself. </li>

{{< highlight bash >}}sudo rsync -vaxAX --delete --ignore-errors / /Volumes/Backup/
{{< / highlight >}}



	<li>If you have a desktop computer, have this happen every morning at 5AM by creating a temporary text file containing this line:</li>
	
{{< highlight bash >}}
0 5 * * * rsync -vaxAX --delete --ignore-errors / /Volumes/Backup/
{{< / highlight >}}

and then doing 

{{< highlight bash >}}
sudo crontab -u root 
{{< / highlight >}}

that-file.

    <li>If you have a laptop, do that before you go to bed. Really. Every night when you plug your laptop in to charge.</li>
	<li>If you're on a Mac, that backup drive will be <em>bootable.</em> That means that when (WHEN) your internal drive scorches itself, you can just take your backup drive and put it in your computer and go. This is nice.</li>
	<li>When (WHEN) your backup drive goes bad, which you will notice because your last backup failed, replace it immediately. This is your number one priority. Don't wait until the weekend when you have time, do it now, before you so much as <em>touch</em> your computer again. Do it before goddamned breakfast. The universe tends toward maximum irony. Don't push it.</li>
	<li>That third drive? Do a backup onto it the same way, then take that to your office and lock it in a desk. Every few months, bring it home, do a backup, and immediately take it away again. This is your "my house burned down" backup.</li>
</ul>
<em>"OMG, three drives is so expensive! That sounds like a hassle!"</em> Shut up. I know things. You will listen to me. Do it anyway.

Excellent advice!
