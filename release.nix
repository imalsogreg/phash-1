let pkgs = import ../nixpkgs {};
in pkgs.haskellPackages.callPackage ./. { phash = pkgs.phash; }

# let
#   myoverlay = self: super: {
#     pHash = self.callPackage ../pHash/default.nix {};
#   };
#   pkgs = import ../nixpkgs {overlays = [myoverlay];};
# in
#   pkgs.haskell.lib.dontCheck (pkgs.haskell.lib.dontHaddock (pkgs.haskell.lib.dontCoverage (pkgs.haskell.lib.appendConfigureFlag (pkgs.haskellPackages.callPackage ./default.nix {}) "library:phash")))
# 
#   pkgs.haskell.lib.overrideCabal (pkgs.haskellPackages.callPackage ./default.nix {}) (drv: 
#     { 
#       doCheck = false;
#       configureFlags = drv.configureFlags ++ ["lib:nonsense"];
#       buildFlags = ["lib:nonsense"];
#     }
#   )
