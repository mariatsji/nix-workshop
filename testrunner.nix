let exercises = import ./exercises.nix;

in with import ./utils/nest.nix; {
    res1 = assertThat
        "part1 a string sais it is a string"
        exercises.part1
        "I am a string";
    res2 = assertThat
        "part1 a lambda function from x to x squared"
        exercises.part2 3
        9;

}
