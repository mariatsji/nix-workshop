# nest is an awesome testing framework for nix, defined as:

let pretty = val :
    if builtins.typeOf val == "lambda" then "lambda"
    else ''${builtins.toString val}'';

in {
    assertEquals = description: actual: expected: 
        if actual == expected
        then ''${pretty description}: PASS''
        else abort ''${pretty description}: actual: [${pretty actual}] but expected: [${pretty expected}]'';
}
