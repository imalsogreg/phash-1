let myoverlay = self: super: {
    pHash = self.callPackage ../pHash {};
};
in
(import <nixpkgs> { overlays = [ myoverlay ]; }).haskellPackages.callPackage ./default.nix {}
