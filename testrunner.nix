let exercises = import ./exercises.nix;

in with import ./utils/nest.nix; {
    res1a = assertEquals
        "part1 a string sais it is a string"
        exercises.part1a
        "I am a string";
    res1b = assertEquals
        ''part1 a string sais it is a "string"''
        exercises.part1b
        ''I am a "string"'';
    res2 = assertEquals
        "part2 a lambda function from x to x squared applied to 3"
        (exercises.part2 3)
        9;
    res3 = assertEquals
        "part3 point to another file"
        (builtins.readFile exercises.part3)
        ":)";
    res4a = assertEquals
        "part4 create a record is actually a set"
        (builtins.typeOf exercises.part4)
        "set";
    res4b = assertEquals
        "part4 create a set with key a"
        exercises.part4.a
        true;
    res4c = assertEquals
        "part4 create a set with key b"
        exercises.part4.b
        5;
    res5 = assertEquals
        "part5 create the map function for lists"
        (exercises.part5 builtins.toString [ 1 2 3])
        ["1" "2" "3"];
    res6 = assertEquals
        ''part6 assign the list consisting of "hello" and 2.0''
        exercises.part6
        [ "hello" 2.0 ];
}
