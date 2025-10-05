{ pkgs }:

let
  misc = with pkgs; [
    httpie
    jq
  ];

  pythonTools = with pkgs; [
    python314
  ];
in
misc
++ pythonTools
