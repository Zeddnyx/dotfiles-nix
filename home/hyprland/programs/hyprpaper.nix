let
  style = import ../../styles.nix;
in {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "${style.image.internal}"
        "${style.image.external}"
      ];
      wallpaper = [
        "eDP-1,${style.image.internal}"
        "HDMI-A-1,${style.image.external}"
      ];
      ipc = true;
      splash = true;
      splash_offset = 20;
    };
  };
}
