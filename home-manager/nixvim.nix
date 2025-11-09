{ pkgs }:

{
  enable = true;
  enableMan = true;

  # Sets aliases vi/vim=nvim
  viAlias = true;
  vimAlias = true;

  globals = {
    mapleader = " ";
  };

  opts = {
    expandtab = true;
    softtabstop = 2;
    shiftwidth = 2;
    scrolloff = 10;

    number = true;
    hlsearch = true;
    list = true;
    listchars = { tab = "»·"; trail = "·"; };
    splitright = true;
    splitbelow = true;
  };

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavor = "mocha";
    };
  };
}
