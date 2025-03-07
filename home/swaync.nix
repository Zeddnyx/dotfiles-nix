let
  styles = import ./styles.nix;
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
        background: ${styles.color.background}
      }
      .notification-row {
        outline: none;
        margin: 10px;
        padding: 0;
      }
      .notification {
        background: ${styles.color.background};
        padding: 0;
        margin: 0px;
      }
      .notification-content {
        background: ${styles.color.background};
        padding: 10px;
        border-radius: 0px;
        border: 2px solid ${styles.color.white};
        margin: 0;
      }
      .notification-default-action {
        margin: 0;
        padding: 0;
        border-radius: 0px;
      }
      .close-button {
        background: ${styles.color.red};
        color: ${styles.color.white};
        text-shadow: none;
        padding: 0;
        border-radius: 0px;
        margin-top: 5px;
        margin-right: 5px;
      }
      .close-button:hover {
        box-shadow: none;
        background: ${styles.color.redLight};
        transition: all .15s ease-in-out;
        border: none
      }
      .notification-action {
        border: 2px solid ${styles.color.white};
        border-top: none;
        border-radius: 0px;
      }
      .notification-default-action:hover,
      .notification-action:hover {
        color: ${styles.color.white};
        background: ${styles.color.blue}
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
        background: ${styles.color.background}
      }
      .notification-action:last-child {
        border-bottom-right-radius: 0px;
        background: ${styles.color.background}
      }
      .inline-reply {
        margin-top: 8px
      }
      .inline-reply-entry {
        background: ${styles.color.violet};
        color: ${styles.color.yellow};
        caret-color: ${styles.color.yellow};
        border: 1px solid ${styles.color.white};
        border-radius: 0px
      }
      .inline-reply-button {
        margin-left: 4px;
        background: ${styles.color.background};
        border: 1px solid ${styles.color.white};
        border-radius: 0px;
        color: ${styles.color.white}
      }
      .inline-reply-button:disabled {
        background: initial;
        color: ${styles.color.yellow};
        border: 1px solid transparent
      }
      .inline-reply-button:hover {
        background: ${styles.color.redLight}
      }
      .body-image {
        margin-top: 6px;
        background-color: ${styles.color.red};
        border-radius: 0px
      }
      .summary {
        font-size: 14px;
        font-weight: 700;
        background: transparent;
        color: ${styles.color.white};
        text-shadow: none
      }
      .time {
        font-size: 12px;
        font-weight: 700;
        background: transparent;
        color: ${styles.color.white};
        text-shadow: none;
        margin-right: 18px
      }
      .body {
        font-size: 14px;
        font-weight: 400;
        background: transparent;
        color: ${styles.color.white};
        text-shadow: none
      }
      .control-center {
        background: ${styles.color.background};
        border: 2px solid ${styles.color.white};
        border-radius: 0px;
      }
      .control-center-list {
        background: ${styles.color.violet}
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
        color: ${styles.color.white};
        background: ${styles.color.background};
        font-size: 1rem;
        border-radius: 0px;
      }
      .widget-title>button {
        font-size: 0.8rem;
        color: ${styles.color.white};
        text-shadow: none;
        background: ${styles.color.backgroundAlt};
        box-shadow: none;
        border-radius: 0px;
      }
      .widget-title>button:hover {
        background: ${styles.color.red};
        color: ${styles.color.background};
      }
      .widget-dnd {
        background: ${styles.color.background};
        border-radius: 0px;
        font-size: 1rem;
        color: ${styles.color.white};
      }
      .widget-dnd>switch {
        border-radius: 0px;
        border: 1px solid ${styles.color.white};
        background: ${styles.color.backgroundAlt};
      }
      .widget-dnd>switch:checked {
        background: ${styles.color.primary};
      }
      .widget-dnd>switch slider {
        background: ${styles.color.white};
        box-shadow: none;
        border-radius: 0px
      }
      .widget-dnd>switch:checked slider {
        background: ${styles.color.white};
        box-shadow: none;
        border-radius: 0px
      }
      .widget-label {
          margin: 0px;
      }
      .widget-label>label {
        font-size: 0.8rem;
        color: ${styles.color.whiteLight};
      }
      .widget-mpris {
        color: ${styles.color.white};
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
        background: ${styles.color.red}
      }
      .topbar-buttons>button {
        border: none;
        background: transparent
      }
      .widget-volume {
        background: ${styles.color.backgroundAlt};
        padding: 5px;
        border-radius: 0px;
        font-size: x-large;
        color: ${styles.color.white};
      }
      .widget-volume>box>button {
        background: ${styles.color.primary};
        border: none
      }
      .per-app-volume {
        background-color: ${styles.color.background};
        padding: 4px 8px 8px;
        margin: 0 8px 8px;
        border-radius: 0px;
      }
      .widget-backlight {
        background: ${styles.color.backgroundAlt};
        padding: 5px;
        margin: 10px 10px 5px 10px;
        border-radius: 0px;
        font-size: x-large;
        color: ${styles.color.white}
      }
    '';
  };
}
