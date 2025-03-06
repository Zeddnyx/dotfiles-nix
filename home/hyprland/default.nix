{
  imports = [
    ./programs/hypridle.nix
    ./programs/hyprlock.nix
    ./programs/hyprpaper.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = import ./config/settings.nix;
  };
}
