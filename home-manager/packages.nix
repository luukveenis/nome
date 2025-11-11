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
    nixd
  ];

  pythonTools = with pkgs; [
    python314
  ];
in
communication
++ misc
++ pythonTools
