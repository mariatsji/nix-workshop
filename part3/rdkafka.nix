let nixpkgs = (import ./artifact.nix).nixpkgs;

in nixpkgs.rdkafka.overrideAttrs (old: {
    src = nixpkgs.fetchFromGitHub {
      owner = "";
      repo = "";
      rev = "";
      # If you don't know the hash, the first time, set:
      # sha256 = "0000000000000000000000000000000000000000000000000000";
      # then nix will fail the build with such an error message:
      # hash mismatch in fixed-output derivation '/nix/store/m1ga09c0z1a6n7rj8ky3s31dpgalsn0n-source':
      # wanted: sha256:0000000000000000000000000000000000000000000000000000
      # got:    sha256:<something-something>
      sha256 = "0000000000000000000000000000000000000000000000000000";
    };
  })
