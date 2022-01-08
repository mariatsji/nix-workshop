with ((import ../part3/artifact.nix).nixpkgs);
derivation {
  name = "simple";
  builder = "${bash}/bin/bash";
  args = [ ./simple_builder.sh ];
  inherit gcc coreutils curl;
  src = ./simple.c;
  system = builtins.currentSystem;
}
