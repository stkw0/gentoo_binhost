# Gentoo binhost
Scripts for building gentoo binhost of https://gentoo.kropotkin.rocks/

## How to use it

Modify make.conf as neeeded with the following.

```
FEATURES="getbinpkg"
EMERGE_DEFAULT_OPTS="--binpkg-respect-use=y"
PORTAGE_BINHOST="https://gentoo.kropotkin.rocks/amd64-testing/"
```

## List of available binhosts

### amd64-testing

 URL: https://gentoo.kropotkin.rocks/amd64-testing/ 
 
 A default ~amd64 binhost with the following changes:
  - python2 is removed whenever possible
  - lto USE is enabled


