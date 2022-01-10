export PATH="$coreutils/bin"
mkdir "$out"
"$ghcwithpackages/bin/ghc" --version
"$ghcwithpackages/bin/ghc" -o "$out/haskelltime" "$src"