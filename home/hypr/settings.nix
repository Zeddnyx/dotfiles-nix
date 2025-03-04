{
  monitor = [
    "eDP-1,preferred,0x0,auto"
    "HDMI-A-1,preferred,1920x0,auto"
  ];

  env = [
    "XCURSOR_SIZE,24"
    "HYPRCURSOR_SIZE,24"
  ];

  exec-once = [
    "swaybg -o eDP-1 -i $HOME/Wallpaper/nixos-pattern-2.png"
    "swaybg -o HDMI-A-1 -i $HOME/Wallpaper/nixos-pattern-2.png"
    "hypridle"
    "swaync"
    "brave"
  ];

  general = {
    gaps_in = 5;
    gaps_out = 15;
    border_size = 2;
    # col.active_border = "rgba(ffffffaa) rgba(ffffffaa) 45deg";
    # col.inactive_border = "rgba(111111aa)";
    resize_on_border = true;
    allow_tearing = false;
    layout = "dwindle";
  };

  decoration = {
    rounding = 8;
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

  binds = import ./keybindings.nix;
}
