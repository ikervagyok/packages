{ nixpkgs }:

let
  pkgs = import nixpkgs {};
  wine = pkgs.wine.override { wineRelease = "staging"; winebuild = "wineWow"; };
in {
  inherit (pkgs) zathura;
  wine;
# inherit (pkgs) wine;
  inherit (pkgs) wineStaging;
  inherit (pkgs) hydra;
  inherit (pkgs.haskellPackages) xmonad;
} 
