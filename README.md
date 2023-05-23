# Home Assistant add-on repository

Note: I run this locally, the packages aren't available (github actions is too much of a PITA to actually bother to set up with multiple images). 
## Add-ons

This repository contains the following add-ons

### [Dehydrated](./dehydrated)

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

Runs https://github.com/dehydrated-io/dehydrated daily to generate/renew certificates.

Note: this requires some manual setup:

- Create /ssl/config from dehydrate's docs (or leave it empty)
- Create /ssl/domains.txt
- Run `/ssl/dehydrated --register --accept-terms`

If you're using the official nginx proxy, you'll want to modify the config to point to certs/(domain)/(cert.pem, privkey.pem).


[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
