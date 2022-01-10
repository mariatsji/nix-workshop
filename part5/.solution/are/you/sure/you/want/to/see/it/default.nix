with ((import ../part3/artifact.nix).nixpkgs);
derivation {
  name = "haskelltime";
  builder = "${bash}/bin/bash";
  args = [ ./builder.sh ];
  inherit coreutils;
  ghcwithpackages = haskell.packages.ghc8107.ghcWithPackages (pkgs: with pkgs; [ clock ]) ;
  src = ./src/Main.hs;
  system = builtins.currentSystem;
}
