{ nixpkgs }:

let
  pkgs = import nixpkgs {};
in with pkgs; {
  zathura;
# pkgs.lib.overrideDerivation wine ( attrs: {
#   wineRelease = "staging";
#   wineBuild = "wineWow";
# })
  chromium;
  firefox-beta;
} 
