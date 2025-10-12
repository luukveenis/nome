{ pkgs }:

{
  baseIndex = 1;
  enable = true;
  escapeTime = 0;
  historyLimit = 10000;
  keyMode = "vi";
  prefix = "C-Space";

  plugins = with pkgs; [
    tmuxPlugins.catppuccin
  ];

  extraConfig = ''
    set -g @catppuccin_flavour 'macchiato'
  '';
}
