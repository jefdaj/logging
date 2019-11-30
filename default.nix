{ mkDerivation, base, binary, bytestring, fast-logger, hspec
, lifted-base, monad-control, old-locale, regex-compat, stdenv
, text, time, time-locale-compat, transformers, unix
}:
mkDerivation {
  pname = "logging";
  version = "3.0.5";
  src = ./.;
  libraryHaskellDepends = [
    base binary bytestring fast-logger lifted-base monad-control
    old-locale regex-compat text time time-locale-compat transformers
  ];
  testHaskellDepends = [ base hspec unix ];
  description = "Simplified logging in IO for application writers";
  license = stdenv.lib.licenses.mit;
}
