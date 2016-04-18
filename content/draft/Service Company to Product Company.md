# Service Company to Product Company

I have migrated my company from a services oriented company dealing mainly with consultation and strategy advice to building products.

The end product may be the same but my responsibilities are different. I will now host client code, so I will embrace the cloud just like I always advice my clients. I will be responsible for uptime, upgrades and security - it is a big ask. 

### What about those consumers with low/no internet connectivity?

The hosting model is slightly different to what most are used to in the west especially to those with very low internet connectivity and require hosting locally. The user interface will be exactlyy the same but the "webserver" is now hosted on-premise (village enterprise model). 

To support this, I have looked at and investigated various container tech, openstack may be great for Barclays but for a small outfit, with low power requirements - I was thinking of something smaller. Docker was investigated but I was drawned to OpenVx and eventually LXD/LXC. The rest api for LXD meant I can keep an eye on customer products, and swap in updated images and system upgrades. Http is truly great and clean architectures design validates this approach.


### The truth is..

The truth is eventually those guys can be migrated to cloud infrastructure as the power rquirements, etc is just to advantegous to ignore.
