# Gentoo binhost
Scripts for building gentoo binhost of https://gentoo.kropotkin.rocks/

## How to use it

Modify make.conf as neeeded with the following.

```
FEATURES="getbinpk"
EMERGE_DEFAULT_OPTS="--binpkg-respect-use=y"
PORTAGE_BINHOST="https://gentoo.kropotkin.rocks/amd64/ https://gentoo.kropotkin.rocks/amd64-plasma/"
```

You can add one or more binhosts whatever you need


## List of available binhosts

### amd64

 URL: https://gentoo.kropotkin.rocks/amd64/ 
 
 A default ~amd64 binhost with the following changes:
  - python2 is removed whenever possible
  - lto USE is enabled
  
 It's for simple systems, servers and so. X is not enabled.
 
### amd64-desktop

URL: https://gentoo.kropotkin.rocks/amd64-desktop/
 
 ~amd64 with plasma profile. It's build on top of amd64 binhost but with a different profile
  
### amd64-plasma

 URL: https://gentoo.kropotkin.rocks/amd64-plasma/
 
 ~amd64 with plasma profile. It's build on top of amd64-desktop binhost but with a different profile and:
  - elogind is used instead of consolekit
