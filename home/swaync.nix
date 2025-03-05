let
  cl = import ./colors.nix;
in {
  services.swaync = {
    enable = true;
    settings = {
      positionX = "right";
      positionY = "top";
      layer = "overlay";
      control-center-margin-top = 10;
      control-center-margin-bottom = 10;
      control-center-margin-right = 10;
      control-center-margin-left = 10;
      notification-icon-size = 64;
      notification-body-image-height = 100;
      notification-body-image-width = 200;
      timeout = 10;
      timeout-low = 5;
      timeout-critical = 0;
      fit-to-screen = true;
      control-center-width = 500;
      control-center-height = 0;
      notification-window-width = 500;
      keyboard-shortcuts = true;
      image-visibility = "when-available";
      transition-time = 200;
      hide-on-clear = false;
      hide-on-action = true;
      script-fail-notify = true;
      widget-config = {
        title = {
          text = "Notification";
          clear-all-button = true;
          button-text = "󰎟";
        };
        dnd = {
          text = "Do Not Disturb";
        };
        label = {
          max-lines = 3;
          text = "Notification Center";
        };
        mpris = {
          image-size = 96;
          image-radius = 0;
        };
        volume = {
          label = "󰕾";
        };
        backlight = {
          label = "󰃟";
        };
      };
      widgets = [
        "mpris"
        "volume"
        "backlight"
        "title"
        "dnd"
        "notifications"
      ];
    };
    style = ''
      * {
        font-family: FiraCode;
        font-weight: bold;
      }
      .control-center .notification-row:focus,
      .control-center .notification-row:hover {
        opacity: 0.9;
        background: ${cl.background}
      }
      .notification-row {
        outline: none;
        margin: 10px;
        padding: 0;
      }
      .notification {
        background: ${cl.background};
        padding: 0;
        margin: 0px;
      }
      .notification-content {
        background: ${cl.background};
        padding: 10px;
        border-radius: 0px;
        border: 2px solid ${cl.white};
        margin: 0;
      }
      .notification-default-action {
        margin: 0;
        padding: 0;
        border-radius: 0px;
      }
      .close-button {
        background: ${cl.red};
        color: ${cl.white};
        text-shadow: none;
        padding: 0;
        border-radius: 0px;
        margin-top: 5px;
        margin-right: 5px;
      }
      .close-button:hover {
        box-shadow: none;
        background: ${cl.redLight};
        transition: all .15s ease-in-out;
        border: none
      }
      .notification-action {
        border: 2px solid ${cl.primary};
        border-top: none;
        border-radius: 0px;
      }
      .notification-default-action:hover,
      .notification-action:hover {
        color: ${cl.primary};
        background: ${cl.primary}
      }
      .notification-default-action {
        border-radius: 0px;
        margin: 0px;
      }
      .notification-default-action:not(:only-child) {
        border-bottom-left-radius: 0px;
        border-bottom-right-radius: 0px
      }
      .notification-action:first-child {
        border-bottom-left-radius: 0px;
        background: ${cl.background}
      }
      .notification-action:last-child {
        border-bottom-right-radius: 0px;
        background: ${cl.background}
      }
      .inline-reply {
        margin-top: 8px
      }
      .inline-reply-entry {
        background: ${cl.violet};
        color: ${cl.primary};
        caret-color: ${cl.yellow};
        border: 1px solid ${cl.white};
        border-radius: 0px
      }
      .inline-reply-button {
        margin-left: 4px;
        background: ${cl.background};
        border: 1px solid ${cl.white};
        border-radius: 0px;
        color: ${cl.white}
      }
      .inline-reply-button:disabled {
        background: initial;
        color: ${cl.yellow};
        border: 1px solid transparent
      }
      .inline-reply-button:hover {
        background: ${cl.redLight}
      }
      .body-image {
        margin-top: 6px;
        background-color: ${cl.primary};
        border-radius: 0px
      }
      .summary {
        font-size: 14px;
        font-weight: 700;
        background: transparent;
        color: rgba(158, 206, 106, 1);
        text-shadow: none
      }
      .time {
        font-size: 12px;
        font-weight: 700;
        background: transparent;
        color: ${cl.primary};
        text-shadow: none;
        margin-right: 18px
      }
      .body {
        font-size: 14px;
        font-weight: 400;
        background: transparent;
        color: ${cl.primary};
        text-shadow: none
      }
      .control-center {
        background: ${cl.background};
        border: 2px solid ${cl.white};
        border-radius: 0px;
      }
      .control-center-list {
        background: ${cl.violet}
      }
      .control-center-list-placeholder {
        opacity: .5
      }
      .floating-notifications {
        background: transparent
      }
      .blank-window {
        background: alpha(black, 0)
      }
      .widget-title {
        color: ${cl.white};
        background: ${cl.background};
        font-size: 1rem;
        border-radius: 0px;
      }
      .widget-title>button {
        font-size: 0.8rem;
        color: ${cl.white};
        text-shadow: none;
        background: ${cl.backgroundAlt};
        box-shadow: none;
        border-radius: 0px;
      }
      .widget-title>button:hover {
        background: ${cl.red};
        color: ${cl.background};
      }
      .widget-dnd {
        background: ${cl.background};
        border-radius: 0px;
        font-size: 1rem;
        color: ${cl.white};
      }
      .widget-dnd>switch {
        border-radius: 0px;
        border: 1px solid ${cl.white};
        background: ${cl.backgroundAlt};
      }
      .widget-dnd>switch:checked {
        background: ${cl.primary};
      }
      .widget-dnd>switch slider {
        background: ${cl.white};
        box-shadow: none;
        border-radius: 0px
      }
      .widget-dnd>switch:checked slider {
        background: ${cl.white};
        box-shadow: none;
        border-radius: 0px
      }
      .widget-label {
          margin: 0px;
      }
      .widget-label>label {
        font-size: 0.8rem;
        color: ${cl.yellow};
      }
      .widget-mpris {
        color: ${cl.white};
        border-radius: 0px;
        box-shadow: none;
      }
      .widget-mpris > box > button {
        border-radius: 0px;
      }
      .widget-mpris-player {
        padding: 5px;
        margin: 10px
      }
      .widget-mpris-title {
        font-weight: 700;
        font-size: 1.25rem
      }
      .widget-mpris-subtitle {
        font-size: 1.1rem
      }
      .widget-menubar>box>.menu-button-bar>button {
        border: none;
        background: ${cl.red}
      }
      .topbar-buttons>button {
        border: none;
        background: transparent
      }
      .widget-volume {
        background: ${cl.backgroundAlt};
        padding: 5px;
        border-radius: 0px;
        font-size: x-large;
        color: ${cl.white};
      }
      .widget-volume>box>button {
        background: ${cl.primary};
        border: none
      }
      .per-app-volume {
        background-color: ${cl.background};
        padding: 4px 8px 8px;
        margin: 0 8px 8px;
        border-radius: 0px;
      }
      .widget-backlight {
        background: ${cl.backgroundAlt};
        padding: 5px;
        margin: 10px 10px 5px 10px;
        border-radius: 0px;
        font-size: x-large;
        color: ${cl.white}
      }
    '';
  };
}
