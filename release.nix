{ nixpkgs }:

let
  pkgs = import nixpkgs {};
in {
  inherit (pkgs) zathura;
} 
