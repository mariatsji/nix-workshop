let actual = import ./exercises.nix;

in with import ./utils/nest.nix; {
    res = assertThat "part1 a string sais it is a string" actual.part1 "I am a strong";
}
