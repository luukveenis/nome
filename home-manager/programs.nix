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

  # Dev tool versioning
  mise = {
    enable = true;
    enableZshIntegration = true;
    globalConfig = ''
      [tools]
      ruby = '3.4.6'
    '';
  };

  # For Git rebases and such
  neovim = import ./neovim.nix { inherit pkgs; };

  # ripgrep
  ripgrep = {
    enable = true;
  };

  # My fav shell
  zsh = import ./zsh.nix { inherit pkgs; };
}
