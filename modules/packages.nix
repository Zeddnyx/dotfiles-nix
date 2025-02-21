{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    neovim
    ripgrep
    tmux
    wget
    git
    pkgs.nix-ld
    wl-clipboard
    hyprland
    hyprlock
    hypridle
    hyprshot
    swaybg
    wofi
    kitty
    brave
    fish
    feh
    pulseaudioFull
    pavucontrol
    htop
    htop-vim
    btop
    fastfetch
    postman
    telegram-desktop
    nodejs_22
    pnpm_10
    lua-language-server
    typescript-language-server
    fuse
    fuse3
  ];
}

