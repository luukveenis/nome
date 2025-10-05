{ pkgs }:

{
  enable = true;

  extensions = with pkgs; [
    gh-markdown-preview
  ];
  gitCredentialHelper = {
    enable = true;
    hosts = [ "https://github.com" ];
  };
  settings = {
    aliases = (import ./aliases.nix { inherit pkgs; }).gh;
    editor = "vim";
    git_protocol = "ssh";
    prompt = "enabled";
  };
}
