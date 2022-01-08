# read about the (alas very few) nix types : https://nixos.wiki/wiki/Nix_Expression_Language#Types
{
    # assign the string "I am a string" to the variable part1 inside this map
    part1a = ''I am a string'';
    # assign the same string in part2a, but this time you should have quotes around "string"
    part1b = ''I am a "string"'';
    # assign the function from a number to the square of that number to the variable part2
    part2 = x: x * x;
    # assign a filepath to important.document.txt that lives in the doc folder
    # ./docs/important.document.txt
    part3 = ./docs/important.document.txt;
    # create a set containing two keys: a -> true, b -> 5
    # { a=true; b=5;}
    part4 = { a=true; b=5;};
    # assign an anonymous function that accepts a function (a -> b) and a list of a, returning a list of b
    # read about builtin functions that you can use here (use by e.g. builtins.all)
    part5 = builtins.map;
}