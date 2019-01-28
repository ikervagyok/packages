{ nixpkgs }:

let
  pkgs = import nixpkgs {};
  wine = pkgs.wine.override { wineRelease = "staging"; wineBuild = "wineWow"; };
  wine = pkgs.wine.override { wineRelease = "unstable"; wineBuild = "wineWow"; };
  libreoffice = pkgs.libreofficeFresh;
in {
  inherit (pkgs) zathura;
  wine = wine;
  libreoffice;
# inherit (pkgs) wine;
  inherit (pkgs) wineStaging;
  inherit (pkgs) hydra;
  inherit (pkgs.haskellPackages) xmonad;
} 
