{
  programs.sway-notification-center = {
    enable = true;
    config = {
      positionX = "right";
      positionY = "top";
      "control-center-width" = 350;
      "notification-window-width" = 400;
      "notification-margin" = 10;
      timeout = 5;
      "layer-shell" = true;
      "hide-on-click" = true;
      background = "#282c34";
      "border-radius" = 10;
      "border-size" = 2;
      "border-color" = "#61afef";
      "text-color" = "#ffffff";
      default-timeout = 5000;
      icons = {
        enabled = true;
        size = 32;
      };
    };
  };
}
