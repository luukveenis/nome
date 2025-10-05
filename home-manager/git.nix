{ pkgs }:

{
  enable = true;

  aliases = (import ./aliases.nix { inherit pkgs; }).git;
  delta = {
    enable = true;
  };
  extraConfig = {
    core = {
      editor = "nvim";
      whitespace = "trailing-space,space-before-tab";
    };
    credential.helper = "osxkeychain";
    pull.rebase = "true";
  };
  ignores = [
    ".cache/"
    ".DS_Store"
    ".direnv/"
    ".idea/"
    "*.swp"
    ".vscode/"
    "npm-debug.log"
  ];
  package = pkgs.gitAndTools.gitFull;
  userEmail = "luukveenis@gmail.com";
  userName = "Luuk Veenis";
}
