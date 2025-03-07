{ pkgs, ... }:

{
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
      url_color = "#8ec07c";
      url_style = "curly";
      open_url_with = "default";
      detect_urls = "yes";
      copy_on_select = "yes";
      shell = "fish";
      background = "#282828";
      foreground = "#C9B6AF";
      cursor = "#928374";
      selection_foreground = "#928374";
      selection_background = "#3c3836";
      color0 = "#282828";
      color8 = "#928374";
      color1 = "#cc241d";
      color9 = "#fb4934";
      color2 = "#98971a";
      color10 = "#b8bb26";
      color3 = "#d79921";
      color11 = "#fabd2d";
      color4 = "#fabd2d";
      color12 = "#fabd2d";
      color5 = "#b16286";
      color13 = "#d3869b";
      color6 = "#689d6a";
      color14 = "#8ec07c";
      color7 = "#a89984";
      color15 = "#928374";
    };
    keybindings = {
      "ctrl+y"= "copy_to_clipboard";
      "ctrl+p" = "paste_from_clipboard";
    };
  };
}
