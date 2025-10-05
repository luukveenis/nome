{ pkgs }:

{
  gh = {
    pvw = "pr view --web";
    rvw = "repo view --web";
  };

  git = {
    co = "checkout";
    cob = "checkout -b";
    ci = "commit";
    cm = "commit -m";
    cp = "commit -p";
    crp = "cherry-pick";
    d = "diff";
    s = "status";
    st = "status";
    l = "log --graph --pretty='%Cred%h%Creset - %C(bold blue)<%an>%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)' --abbrev-commit --date=relative";
  };

  shell = {
    # General
    diff = "diff --color=auto";
    grep = "grep --color=auto";
    szsh = "source ~/.zshrc";

    # Direnv helpers
    da = "direnv allow";
    dr = "direnv reload";
    dk = "direnv revoke";

    ## Nix stuff. Inspired by: https://alexfedoseev.com/blog/post/nix-time.

    # Run Nix garbage collection
    xgc = "nix store gc -v";
    xrd = "sudo launchctl unload /Library/LaunchDaemons/systems.determinate.nix-daemon.plist && sudo launchctl load /Library/LaunchDaemons/systems.determinate.nix-daemon.plist";

    # Nix flake helpers
    # ndc = "nix develop --command";
    # nfc = "nix flake check";
    # nfca = "nix flake check --all-systems";
    # nfm = "nix flake metadata";
    # nfs = "nix flake show";
    # nfu = "nix flake update";
    # nsn = "nix search nixpkgs";
    # upstream-nix = "nix run github:NixOS/nix/2.31.1 --";
  };
}
