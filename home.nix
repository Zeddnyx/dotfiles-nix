{ config, pkgs, ... }:

{
  imports = [
    ./home/hypr/hyprland.nix
    ./home/hypr/hypridle.nix
    ./home/hypr/hyprlock.nix
    ./home/kitty.nix
    ./home/wofi.nix
    ./home/git.nix
    ./home/fish.nix
    ./home/tmux.nix
    # ./home/fastfetch.nix
    # ./home/gtk.nix
  ];

  home.username = "jee";
  home.homeDirectory = "/home/jee";

  home.packages = with pkgs; [
    hello
  ];

  home.stateVersion = "24.11"; 
  programs.home-manager.enable = true;
}
