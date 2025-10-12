{ pkgs }:

{
  enable = true;

  autocd = false;
  initContent = builtins.readFile ./scripts/init.sh;
  package = pkgs.zsh;

  prezto = {
    enable = true;
    editor = {
      keymap = "vi";
    };
    pmodules = [
      "prompt"
      "git"
      "completion"
      "history-substring-search"
      "autosuggestions"
      "syntax-highlighting"
    ];
    prompt = {
      theme = "sorin";
    };
  };
}
