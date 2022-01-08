# part 4

nix derivation are input-addressed, this means a derivation (a "package" in nix) is the calculation of the input derivations

That is, we need to look at the inputs if we want to know what is different in two different nix-derivations

Gabriella Gonzalez wrote a tool for visualizing this, called nix-diff

Your task: examine the diff between `rdkafka1.nix` and `rdkafka2.nix`

You can bring nix-diff into scope via `nix-shell -p nix-diff`

We then have to actually build the derivations

    nix-build ./rdkafka1.nix

    nix-build ./rdkafka2.nix

And then run `nix-diff <rdkafka-1-nix-store-address> <rdkafka2-nix-store-address>`

