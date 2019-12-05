## DNS

I run my own dns servers using two VPS's from linode and Unbound. This REPO contains all the configuration files and scripts I use to control them.

The goal of doing this is to limit my unnecessary exposure to Google/Cloudflare etc. and to learn more about DNS and how it works.

By default the servers will not accept any incoming requests, but using a script I can add IP's to a whitelist.
