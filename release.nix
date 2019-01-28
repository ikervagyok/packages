{ nixpkgs }:

let
  pkgs = import nixpkgs {};
  wineStaging = pkgs.wine.override { wineRelease = "staging"; wineBuild = "wineWow"; };
  wineUnstable = pkgs.wine.override { wineRelease = "unstable"; wineBuild = "wineWow"; };
  libreoffice = pkgs.libreoffice-fresh;
in {
  inherit (pkgs) zathura;
  wineStaging = wineStaging;
  wineUnstable = wineUnstable;
  libreoffice = libreoffice;
# inherit (pkgs) wine;
  inherit (pkgs) wineStaging;
  inherit (pkgs) hydra;
  inherit (pkgs.haskellPackages) xmonad;
} 
