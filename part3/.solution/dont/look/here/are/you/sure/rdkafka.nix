let nixpkgs = (import ./artifact.nix).nixpkgs;

in nixpkgs.rdkafka.overrideAttrs (old: {
    src = nixpkgs.fetchFromGitHub {
      owner = "edenhill";
      repo = "librdkafka";
      rev = "d8895b1e7939045dd69ec8b7040af3ff8a00dcb6";
      # If you don't know the hash, the first time, set:
      # sha256 = "0000000000000000000000000000000000000000000000000000";
      # then nix will fail the build with such an error message:
      # hash mismatch in fixed-output derivation '/nix/store/m1ga09c0z1a6n7rj8ky3s31dpgalsn0n-source':
      # wanted: sha256:0000000000000000000000000000000000000000000000000000
      # got:    sha256:173gxk0ymiw94glyjzjizp8bv8g72gwkjhacigd1an09jshdrjb4
      sha256 = "0vfcq73bmbqm5kpzlqgnvx1kb4isyil360kw0720zgfzskxr3scc";
    };
  })
