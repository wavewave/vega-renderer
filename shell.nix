{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let

  hsenv = haskellPackages.ghcWithPackages (p: with p; [
    cabal-install
    aeson
    aeson-pretty
    lens
  ]);

in

stdenv.mkDerivation {
  name = "vega-dev";
  buildInputs = [ hsenv ];
}