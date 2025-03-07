{ config, pkgs, ... }:

{
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        lock_cmd = "hyprlock || notify-send 'lock!'";
        after_sleep_cmd = "notify-send 'System Awake!'";
        ignore_dbus_inhibit = false;
        ignore_systemd_inhibit = false;
      };

      listener = [
        {
          timeout = 600;
          on-timeout = "hyprlock"; 
        }
        {
          # shutdown
          timeout = 3600;
        }
      ];
    };
  };
}
