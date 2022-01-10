# part 5

Optional: Read about making derivations in nix:
https://nixos.org/guides/nix-pills/working-derivation.html

it is possible to build haskell code using nix and ghc directly

- Create a file `part5/default.nix`

- Start out by bringing a specific version of nixpkgs into scope :

    `with ((import ../part3/artifact.nix).nixpkgs);`

and then use a `derivation { .. }` statement like the one given in `part4/simple.nix`

- source should be src/Main.hs, compiled via `part5/builder.sh`

- inside `derivation { }` you will need this package :

`ghcwithpackages = haskell.packages.ghc8107.ghcWithPackages (pkgs: with pkgs; [ clock ]) ;`

- You can check out the derivation in part4/simple.nix for necessary expressions inside `derivation { }`
