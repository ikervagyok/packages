{ nixpkgs }:

let
  pkgs = import nixpkgs {};
in {
  inherit (pkgs) zathura;
  inherit (pkgs) wine;
  inherit (pkgs) wineStaging;
  inherit (pkgs) hydra;
  inherit (pkgs) haskellPackages.xmonad;
} 
