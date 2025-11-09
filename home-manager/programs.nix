{ pkgs }:

{
  # GitHub CLI
  gh = import ./gh.nix { inherit pkgs; };

  # But of course
  git = import ./git.nix { inherit pkgs; };

  # Configure HM itself
  home-manager.enable = true;

  # JSON parsing on the CLI
  jq = {
    enable = true;
    #colors = {
    #  arrays = "1;37";
    #  false = "0;37";
    #  null = "1;30";
    #  numbers = "0;37";
    #  objects = "1;37";
    #  strings = "0;32";
    #  true = "0;37";
    #};
  };

  kitty = {
    enable = true;
    themeFile = "Catppuccin-Macchiato";
  };

  # is more
  less.enable = true;

  # Nixvim for easier Neovim configuration
  nixvim = import ./nixvim.nix { inherit pkgs; };

  # ripgrep
  ripgrep = {
    enable = true;
  };

  tmux = import ./tmux.nix { inherit pkgs; };

  # My fav shell
  zsh = import ./zsh.nix { inherit pkgs; };
}
