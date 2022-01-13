# part 3

Oh no, a critical bug has been found in [librdkafka](https://github.com/edenhill/librdkafka) !

Luckily it has been fixed in a commit that has been pushed but not merged: 

https://github.com/edenhill/librdkafka/pull/3534/commits/d8895b1e7939045dd69ec8b7040af3ff8a00dcb6

Your task is to
- fill in the required fields in `rdkafka.nix`
- if you do it correctly, `nix-build rdkafka.nix` should run OK
- make sure `artifact.nix` pulls in our version of rdkafka - check out this syntax for a list in nix : `[ packageA (import ./packageB.nix) packageC]`
- make sure `-I nixpkgs=https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz` works, and prints out things about kafka. (You could save the html and look at it in a browser)