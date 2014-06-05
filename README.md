debian-home
===========

Defaults scripts and configurations for /home in Debian

Installation
============
```bash
git clone https://github.com/totomz/debian-home
cd debian-home
chmod u+x install.sh
./install.sh
```
The install script link all the contets of debian-home in your home (except .git).

I hate git, so:

svn update
```bash
git pull
```

svn commit
```bash
git add -A && git commit 
git push
```

utils
=====
In the utils folder there are utilities tool, like the dropbox oploader. The intasll script should automatically put alais reference to the executables in the .bashrc


Additional functions defined are:

jbosspid
--------
Shorthand for 'ps aux | grep jboss'

cdlocate($what)
--------
Locate $what and try to change to that


dropbox
-------
Use Dropbox to share files!
