{ pkgs }:

{
  enable = true;
  # Sets alias vim=nvim
  vimAlias = true;

  # Neovim plugins
  plugins = with pkgs.vimPlugins; [
    catppuccin-nvim
  ];

  extraConfig = builtins.readFile ./config/.vimrc;
}
