{
  programs.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "/home/jee/Wallpaper/road-3.jpg"
        "/home/jee/Wallpaper/gruvbox_image11.png"
      ];
      wallpaper = {
        "DP-1" = "/home/jee/Wallpaper/road-3.jpg";
        "HDMI-A-1" = "/home/jee/Wallpaper/gruvbox_image11.png";
      };
      ipc = true;
      splash = true;
      splash_offset = 20;
    };
  };
}
