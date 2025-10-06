{ pkgs }:

let
  misc = with pkgs; [
    fd
    fzy
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
