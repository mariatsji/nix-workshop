let s = import ./values.nix;

in {
    res = if s == "I am a string" then true else abort "not equal strings";
}
