let exercises = import ./exercises.nix;

in with import ./utils/nest.nix; {
    res1 = assertEquals
        "part1 a string sais it is a string"
        exercises.part1
        "I am a string";
    res2 = assertEquals
        "part1 a lambda function from x to x squared applied to 3"
        (exercises.part2 3)
        9;
    res3 = assertEquals
        "part3 point to another file"
        (builtins.readFile exercises.part3)
        ":)";
}
