{ pkgs }:

{
  enable = true;
  baseIndex = 1;
  prefix = "C-Space";

  plugins = with pkgs; [
    tmuxPlugins.catppuccin
  ];

  extraConfig = ''
    set -g @catppuccin_flavour 'macchiato'
  '';
}
