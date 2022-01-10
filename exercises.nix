# read about the (alas very few) nix types : https://nixos.wiki/wiki/Nix_Expression_Language#Types
{
    # assign the string "I am a string" to the variable part1 inside this map
    part1a = throw "part1a not implemented";
    # assign the same string in part2a, but this time you should have quotes around "string"
    part1b = throw "part1b not implemented";
    # assign the function from a number to the square of that number to the variable part2
    part2 = throw "part2 not implemented";
    # assign a filepath to important.document.txt that lives in the doc folder
    part3 = throw "part3 not implemented";
    # create a set containing two keys: a -> true, b -> 5
    part4 = throw "part4 not implemented";
    # assign an anonymous function that accepts a function (a -> b) and a list of a, returning a list of b
    # read about builtin functions that you can use here (use by e.g. builtins.all)
    part5 = throw "part5 not implemented";
    # assign a list containing the string "hello" and the number 2.0
    part6 = throw "part6 not implemented";
}