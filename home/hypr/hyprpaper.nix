{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "/home/jee/Wallpaper/road-3.jpg"
        "/home/jee/Wallpaper/forestpath.jpg"
      ];
      wallpaper = [
        "eDP-1,/home/jee/Wallpaper/road-3.jpg"
        "HDMI-A-1,/home/jee/Wallpaper/forestpath.jpg"
      ];
      ipc = true;
      splash = true;
      splash_offset = 20;
    };
  };
}
