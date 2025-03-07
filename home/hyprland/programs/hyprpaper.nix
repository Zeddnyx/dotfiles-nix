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
        "${style.monitor.internal},${style.image.internal}"
        "${style.monitor.external},${style.image.external}"
      ];
      ipc = true;
      splash = true;
      splash_offset = 20;
    };
  };
}
