{ mkDerivation, base, pkgconfig, doctest, HUnit, pHash, smallcheck, stdenv, tasty, tasty-hunit, tasty-smallcheck
}:
mkDerivation {
  pname = "phash";
  version = "0.0.6";
  src = ./.;
  libraryHaskellDepends = [ base ];
  buildTools = [ pkgconfig ];
  # librarySystemDepends = [ pHash ];
  libraryPkgconfigDepends = [ pHash ];
  testPkgconfigDepends = [ pHash ];
  executablePkgconfigDepends = [ pHash ];
  testHaskellDepends = [
    base doctest HUnit smallcheck tasty tasty-hunit tasty-smallcheck
  ];
  testSystemDepends = [ pHash ];
  homepage = "http://github.com/michaelxavier/phash";
  description = "Haskell bindings to pHash, the open source perceptual hash library";
  license = stdenv.lib.licenses.gpl3;
}
