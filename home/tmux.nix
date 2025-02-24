{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;

    # Set the default terminal
    terminal = "screen-256color";

    # Set the prefix key
    prefix = "C-a";

    # Unbind the default prefix (C-b)
    keyMode = "vi";
    extraConfig = ''
      unbind C-b
      bind-key C-a send-prefix

      # Reload the configuration file
      unbind r
      bind r source-file ~/.tmux.conf

      # Split windows
      unbind %
      bind | split-window -h

      unbind '"'
      bind - split-window -v

      # Pane navigation
      bind -n C-h select-pane -L
      bind -n C-j select-pane -D
      bind -n C-k select-pane -U
      bind -n C-l select-pane -R

      # Pane resizing
      bind -r h resize-pane -L 5
      bind -r j resize-pane -D 5
      bind -r k resize-pane -U 5
      bind -r l resize-pane -R 5

      # Zoom pane
      bind -r m resize-pane -Z

      # Pane border colors
      set-option -g pane-border-style fg=#504946
      set-option -ag pane-active-border-style fg=#9EC07C

      # Mode style
      set-option -g mode-style "bg=#8EC07C, fg=#222222"

      # Mouse
      set -g mouse on

      # Escape time
      set -sg escape-time 7

      # Default shell
      set -g default-shell ${pkgs.fish}/bin/fish

      # Turn off status line
      set -g status off
    '';
  };
}
