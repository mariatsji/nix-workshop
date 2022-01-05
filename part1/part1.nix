let actual = import ./values.nix;

in with import ./../utils/nest.nix; {
    res = assertThat "part1 a string sais it is a string" actual "I am a string";
}
