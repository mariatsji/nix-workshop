# nest is an awesome testing framework for nix, defined as:

{
    assertThat = description: actual: expected: 
        if actual == expected
        then builtins.trace ''${description}: PASS'' true
        else abort ''${description}: actual: [${actual}] but expected: [${expected}]'';
}
