# part 2

Picture yourself as a developer in the near future.

Cannibal gangs roam the streets and the media company you work for monitors all laptops closely.

Installing a brainfuck interpreter on a company laptop is strictly forbidden.

Luckily they do not know about `nix-shell` !

A friend hands you a nice a nice brainfuck-program, and sais that if you have `haskellPackages.brainfuck` in your nix-shell you might be able to 

    cat chess.bf | bf

But you are very particular about what sort of packages you pull in and insist upon version 0.1.0.3

Your task: follow [the instructions](https://lazamar.co.uk/nix-versions/?channel=nixpkgs-unstable&package=brainfuck) on using this version in a nix-shell and invoke chess.bf - (you have to click the link that is the SHA-like commit id next to the desired version number)