{ pkgs }:

let
  misc = with pkgs; [
    httpie
    jq
  ];

  rubyTools = with pkgs; [
    ruby_3_4
  ];

  pythonTools = with pkgs; [
    python314
  ];
in
misc
++ rubyTools
++ pythonTools
