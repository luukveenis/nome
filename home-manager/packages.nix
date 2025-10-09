{ pkgs }:

let
  misc = with pkgs; [
    fd
    fzy
    httpie
    jq
  ];

  pythonTools = with pkgs; [
    python314
  ];
in
misc
++ pythonTools
