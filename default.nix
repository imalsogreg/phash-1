{ mkDerivation, base, phash, zeromq, stdenv }:
mkDerivation {
  pname = "phash";
  version = "0.0.6";
  src = ./.;
  libraryHaskellDepends = [ base ];
  libraryPkgconfigDepends = [ zeromq phash ];
  homepage = "http://github.com/michaelxavier/phash";
  description = "Haskell bindings to pHash, the open source perceptual hash library";
  license = stdenv.lib.licenses.gpl3;
}
