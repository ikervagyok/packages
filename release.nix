{ nixpkgs }:

let
  pkgs = import nixpkgs {};
in {
  with pkgs;
  zathura
  (wine { wineRelease = "staging"; wineBuild = "wineWow"; })
  chromium
  firefox-beta
} 
