# part 4

nix derivation are input-addressed, this means a derivation (a "package" in nix) is the calculation of the input derivations

That is, we need to look at the inputs if we want to know what is different in two different nix-derivations

Gabriella Gonzalez wrote a tool for visualizing this, called nix-diff

Your task: examine the diff between `simple.nix` and `simple2.nix`

You can bring nix-diff into scope via `nix-shell -p nix-diff`

We then have to actually build the derivations

    nix-build -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz ./simple.nix

    nix-build -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz ./simple2.nix

And then run 

    nix-shell -p nix-diff --run 'nix-diff <simple-1-nix-store-address> <simple-2-nix-store-address>' -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz

Your task: find out what mysterious extra binary has been made available to the simple2 derivation!