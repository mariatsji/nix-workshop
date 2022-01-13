# nix-workshop

Welcome!

A nix introductory workshop

## Prerequisites

[install nix](https://nixos.org/download.html)

MINIMUM VERSION 2.5.1

You are done once you can type `nix --version` in a terminal and get some `nix (Nix) 2.5.1` or higher

## part 1

- run `./test.sh`
- open the file `exercises.nix` and replace each key in the set with a nix expression that seems suitable
- run `./test.sh`
- repeat until all PASS

## part 2

    cd part2 && nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz -p bat --run 'bat README.md'

## part 3

    cd part3 && nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz -p bat --run 'bat README.md'

## part 4

    cd part4 && nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz -p bat --run 'bat README.md'

## part 5

    cd part5 && nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz -p bat --run 'bat README.md'