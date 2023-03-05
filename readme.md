# Open doors from BASH!

## What?
A library for Scantron's Nova door-access system.


# Why?
The Scantron system is widely deployed in Denmark.
It comes with a nice Web UI, Nova - but no other App available.

This means there is untapped potential for Scantron systems:
1. Forgot your Nexus RFID chip? Open the door from an App on your phone.
2. Geo-fencing: Automatically open the door as you approach!


# Disclaimer
Unofficial, reverse engineered and very limited capabilities.
Only tested with our Nova 100 installation.


# How?
You need the URL and proper credentials first.
(Consider using `git-secret`)

Nix is optional, but has all nessecary dependencies (not alot).


```
$ time nix-shell --pure --run 'open_door_sb95'
<?xml version="1.0" encoding="UTF-8" ?>
<responses>
<response name="ExecuteFunction" status="0" message="OK. ">
</response>
</responses>
real	0m4.200s
user	0m1.316s
sys	0m0.209s
```

