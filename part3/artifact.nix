let
    nixpkgs = import (fetchTarball https://github.com/nixos/nixpkgs/archive/fc58c3761e9b9b3aee635bb2894bab97aa1b6ff6.tar.gz) {};
    name = nixpkgs.lib.strings.fileContents ./.artifactname;
in
{
    inherit name;
    ghc = nixpkgs.haskell.compiler.ghc8107; # ghc version for this stack resolver
    nixpkgs = nixpkgs; # we lock all nix things to this version of nixpkgs
    dependencies = [
        nixpkgs.zlib
        (import ./rdkafka.nix) #rdkafka
        nixpkgs.postgresql
        nixpkgs.cacert
        # List of nix packages, see https://search.nixos.org/packages.
    ];
    binaryName = name;
    extraDirs = [ ]; # extra directories that will be linked relative to binary inside docker
}
