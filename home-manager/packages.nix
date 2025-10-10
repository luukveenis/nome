{ pkgs }:

let
  communication = with pkgs; [
    zoom-us
  ];

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
communication
++ misc
++ pythonTools
