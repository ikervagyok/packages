{ nixpkgs }:

let
  pkgs = import nixpkgs {};
in {
  inherit (pkgs) zathura (wine { wineRelease = "staging"; wineBuild = "wineWow"; }) chromium firefox-beta;
} 
