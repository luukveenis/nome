{ pkgs }:

let
  misc = with pkgs; [
    httpie
    jq
    openssl_3
  ];

  pythonTools = with pkgs; [
    python314
  ];
in
misc
++ pythonTools
