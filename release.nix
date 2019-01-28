{ nixpkgs }:

let
  pkgs = import nixpkgs {};
  wine = pkgs.wine.override { wineRelease = "staging"; wineBuild = "wineWow"; };
in {
  inherit (pkgs) zathura;
  wine = wine;
# inherit (pkgs) wine;
  inherit (pkgs) wineStaging;
  inherit (pkgs) hydra;
  inherit (pkgs.haskellPackages) xmonad;
} 
