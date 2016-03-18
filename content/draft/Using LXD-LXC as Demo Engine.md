# Using LXD/LXC as Demo Engine

Working for Qiidi, our model works on hosting, configuring various products for enterprise and corporates. When it comes to sales nothing speaks louder than letting the customer get to play with it. "cue toys with the hole so you can press it to play"

The requirements is basically, let me spin up a sandbox environment visible to the world, and periodically trash it and sping it up again as new. But also let me be able to sping it up on my laptop or the CEO's toaster so that they can be assured that it works and I know what I am talking about. Also given the crappy internet connection one gets in Africa, local instance is a GodSend - I can even configure the app to speak to it. 

## Pre-Req: 

1 Ubuntu server as your private image store
1 Ubuntu server as container-host - this can be same as above but defeeats the purpose of this exercise if they are.
