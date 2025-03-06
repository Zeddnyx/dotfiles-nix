let
  style = import ./styles.nix;
in {
  programs.kitty = {
    enable = true;
    settings = {
      font_size = 8.50;
      font_family = "Source Code Pro Medium";
      adjust_line_height = "100%";
      box_drawing_scale = "0.001, 0.5, 1, 1.75";
      window_padding_width = 3;
      background_opacity = 1.88;
      allow_remote_control = "yes";
      scrolling_lines = 1500;
      url_color = style.color.primary;
      url_style = "curly";
      open_url_with = "default";
      detect_urls = "yes";
      copy_on_select = "yes";
      shell = "fish";
      background = style.color.background;
      foreground = style.color.foreground;
      cursor = style.color.whiteLight;
      selection_foreground = style.color.white;
      selection_background = style.color.primary;
      color0 = style.color.background;
      color8 = style.color.whiteLight;
      color1 = style.color.red;
      color9 = style.color.redLight;
      color2 = style.color.green;
      color10 = style.color.greenLight;
      color3 = style.color.yellow;
      color11 = style.color.yellowLight;
      color4 = style.color.yellowLight;
      color12 = style.color.yellowLight;
      color5 = style.color.violet;
      color13 = style.color.violetLight;
      color6 = style.color.aqua;
      color14 = style.color.aquaLight;
      color7 = style.color.white;
      color15 = style.color.whiteLight;
    };
    keybindings = {
      "ctrl+y" = "copy_to_clipboard";
      "ctrl+p" = "paste_from_clipboard";
    };
  };
}
