{ nixpkgs }:

let
  pkgs = import nixpkgs {};
in with pkgs; {
  zathura
  (lib.overrideDerivation wine ( attrs: {
    wineRelease = "staging";
    wineBuild = "wineWow";
  }))
  chromium
  firefox-beta
} 
