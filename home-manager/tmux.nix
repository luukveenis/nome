{ pkgs }:

{
  baseIndex = 1;
  enable = true;
  escapeTime = 0;
  historyLimit = 10000;
  keyMode = "vi";
  prefix = "C-Space";
  customPaneNavigationAndResize = true;

  plugins = with pkgs; [
    tmuxPlugins.catppuccin
    tmuxPlugins.vim-tmux-navigator
  ];

  extraConfig = ''
    set -g @catppuccin_flavour 'macchiato'

    # Fix default dir on new window/pane
    bind '"' split-window -c "#{pane_current_path}"
    bind % split-window -h -c "#{pane_current_path}"
    bind c new-window -c "#{pane_current_path}"

    # Arrow keys to reorder windows
    bind C-Left swap-window -t -1
    bind C-Right swap-window -t +1

    # Make arrow keys more useful
    bind -n S-Up copy-mode
    bind -n S-Down command-prompt
    bind -n S-Right next-window
    bind -n S-Left previous-window

    # Restore clear screen as <prefix> C-a
    bind C-l send-keys 'C-l'
  '';
}
