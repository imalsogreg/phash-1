{ mkDerivation, base, pkgconfig, doctest, HUnit, phash, smallcheck, stdenv, tasty, tasty-hunit, tasty-smallcheck, zeromq
}:
mkDerivation {
  pname = "phash";
  version = "0.0.6";
  src = ./.;
  libraryHaskellDepends = [ base ];
  buildTools = [ pkgconfig ];
  # librarySystemDepends = [ phash zeromq ];
  libraryPkgconfigDepends = [ phash zeromq ];
  testPkgconfigDepends = [ phash zeromq ];
  executablePkgconfigDepends = [ phash zeromq ];
  testHaskellDepends = [
    base doctest HUnit smallcheck tasty tasty-hunit tasty-smallcheck
  ];
  testSystemDepends = [ phash zeromq ];
  homepage = "http://github.com/michaelxavier/phash";
  description = "Haskell bindings to pHash, the open source perceptual hash library";
  license = stdenv.lib.licenses.gpl3;
}
