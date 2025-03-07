{ config, lib, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./modules/packages.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "Nix";
  networking.networkmanager.enable = true;
  networking.firewall.enable = false;

  time.timeZone = "Asia/Jakarta";

  users.users.jee = {
    isNormalUser = true;
    home = "/home/jee";
    description = "Jee";
    extraGroups = [ "wheel" "networkmanager" ];
  };

  security.sudo.extraRules = [{
    users = ["jee"];
    commands = [{ command = "ALL"; options = ["NOPASSWD"]; }];
  }];

  security.acme = {
    acceptTerms = true;
    defaults.email = "zeddnyx@gmail.com";
    # certs."put_your_web_domain_here" = {
    #   dnsProvider = "cloudflare";
    #   credentialsFile = "/etc/secrets/cf.env";
    #   dnsProgationCheck = true;
    # };
  };

  # users.users.nginx = {
  #   extraGroups = [ "acme" ];
  # };

  # services.nginx = [
  #   enable = true;
  #   virtualHosts."demo.hysj.work" = {
  #     forseSSL = true;
  #     loations."/" = {
  #       root = "/Work/oxinos/fatwa-tv-landing";
  #       index = "index.txt"
  #     };
  #   };
  # ];

  fonts.packages = with pkgs; [	
    (nerdfonts.override { fonts = ["FiraCode" "GeistMono" "Cousine" "Iosevka"]; })	
    fira-code	
  ];

  programs.nix-ld.enable = true;

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  hardware.opengl.enable = true;
  services.udev.packages = with pkgs; [ v4l-utils ];

  services.xserver.enable = true;
  services.displayManager.defaultSession = "hyprland";
  services.xserver.displayManager.lightdm.enable = true;
  services.ollama.enable = true;
  services.libinput.enable = true;
  services.printing.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
  services.openssh.enable = true;

  system.stateVersion = "24.11";
}
