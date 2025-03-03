{ config, pkgs, ... }:

let 
  cl = import ./colors.nix;
in {
  programs.kitty = {
    enable = true;
    settings = {
      font_size = 8.50;
      font_family = "Source Code Pro Medium";
      adjust_line_height = "100%";
      box_drawing_scale = "0.001, 0.5, 1, 1.75";
      window_padding_width = 3;
      background_opacity = 0.88;
      allow_remote_control = "yes";
      scrolling_lines = 1500;
      url_color = cl.primary;
      url_style = "curly";
      open_url_with = "default";
      detect_urls = "yes";
      copy_on_select = "yes";
      shell = "fish";
      background = cl.background;
      foreground = cl.foreground;
      cursor = cl.whiteLight;
      selection_foreground = cl.white;
      selection_background = cl.primary;
      color0 = cl.background;
      color8 = cl.whiteLight;
      color1 = cl.red;
      color9 = cl.redLight;
      color2 =  cl.green;
      color10 = cl.greenLight;
      color3 =  cl.yellow;
      color11 = cl.yellowLight;
      color4 =  cl.yellowLight;
      color12 = cl.yellowLight;
      color5 =  cl.violet;
      color13 = cl.violetLight;
      color6 =  cl.aqua;
      color14 = cl.aquaLight;
      color7 =  cl.white;
      color15 = cl.whiteLight;
    };
    keybindings = {
      "ctrl+y"= "copy_to_clipboard";
      "ctrl+p" = "paste_from_clipboard";
    };
  };
}
