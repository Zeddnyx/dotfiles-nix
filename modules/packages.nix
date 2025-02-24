{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    neovim
    ripgrep
    wget
    pkgs.nix-ld
    wl-clipboard
    hyprshot
    swaybg
    brave
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

