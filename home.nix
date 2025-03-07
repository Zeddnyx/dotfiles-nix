{pkgs, ...}: {
  imports = [
    ./home/default.nix
  ];

  home.username = "jee";
  home.homeDirectory = "/home/jee";

  home.packages = with pkgs; [
    gcc

    swaynotificationcenter

    nil # nix lang server
    alejandra # nix formatter

    # Recording and Share Screen
    obs-studio
    wlroots # Wayland support
    xdg-desktop-portal-hyprland # Portal screen sharing
    wf-recorder # Opsional, alternatif record for Wayland
    gst_all_1.gstreamer # fitur OBS
    v4l-utils # virtual camera support
    mpv # video player
  ];

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
