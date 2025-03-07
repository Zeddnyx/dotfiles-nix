{
  imports = [
    ./programs/hypridle.nix
    ./programs/hyprlock.nix
    ./programs/hyprpaper.nix
    ./config/rules.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = import ./config/settings.nix;
  };
}
