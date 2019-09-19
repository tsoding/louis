with import <nixpkgs> {}; {
    LouisEnv = stdenv.mkDerivation {
        name = "LouisEnv";
        buildInputs = [ ghc
                        cabal-install
                        zlib
                        haskellPackages.ghcid
                        haskellPackages.hindent
                        haskellPackages.hlint
                      ];
        LD_LIBRARY_PATH="${zlib}/lib";
    };
}
