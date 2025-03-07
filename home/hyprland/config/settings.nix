let
  style = import ../../styles.nix;
in {
  monitor = [
    "${style.monitor.internal},preferred,0x0,auto"
    "${style.monitor.external},preferred,1920x0,auto"
  ];

  env = [
    "XCURSOR_SIZE,24"
    "HYPRCURSOR_SIZE,24"
  ];

  exec-once = [
    "hypridle"
    "hyprpaper"
    "swaync"
    "brave"
    "kitty"
  ];

  general = {
    gaps_in = 5;
    gaps_out = 10;
    border_size = 2;
    "col.active_border" = "#ebdbb2aa";
    "col.inactive_border" = "#282828aa";
    resize_on_border = true;
    allow_tearing = false;
    layout = "dwindle";
  };

  decoration = {
    rounding = 0;
    active_opacity = 1.0;
    inactive_opacity = 1.8;
    blur = {
      enabled = true;
      size = 3;
      passes = 1;
      vibrancy = 0.1696;
    };
  };

  input = {
    kb_layout = "us";
    follow_mouse = 2;
    sensitivity = 0;
    touchpad.natural_scroll = false;
  };

  gestures.workspace_swipe = true;

  animations = {
    enabled = true;
    bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
    animation = [
      "windows, 1, 7, myBezier"
      "windowsOut, 1, 7, default, popin 80%"
      "border, 1, 10, default"
      "borderangle, 1, 8, default"
      "fade, 1, 7, default"
      "workspaces, 1, 6, default"
    ];
  };

  dwindle = {
    pseudotile = true;
    preserve_split = true;
  };

  misc = {
    force_default_wallpaper = 0;
    disable_hyprland_logo = true;
  };

  binds = import ./binds.nix;
}
