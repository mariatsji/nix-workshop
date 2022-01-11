# part 5

We'll attempt to make a fully working nix-derivation out of a haskell-program `src/Main.hs` that makes use of a haskell package called `clock`

Optional: Read about [making derivations in nix](https://nixos.org/guides/nix-pills/working-derivation.html)

Optional: Read about the [`with`-statement](https://nixos.wiki/wiki/Nix_Expression_Language#with_statement) in nix

it is possible to build haskell code using nix and ghc directly

- Create a file `part5/default.nix`

Start out by bringing a specific version of nixpkgs into scope :

    with ((import ../part3/artifact.nix).nixpkgs);

and then use a `derivation { .. }` statement like the one given in `part4/simple.nix`

inside `derivation { }` you will need this nix-expression :

    ghcwithpackages = haskell.packages.ghc8107.ghcWithPackages (pkgs: with pkgs; [ clock ]) ;`

You can check out the derivation in part4/simple.nix for necessary expressions inside `derivation { }`

- create a file `./builder.sh`, adjust the following command to the nix-environment (which is being passed by `derivation {}`) :

`ghc sourcefile.hs -o $out/haskelltime`

Note that a runnable derivation must write an executable to `$out` in order for `nix-build` to be successful!
