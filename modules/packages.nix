{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Text Editors
    vim
    neovim

    # CLI Utilities
    ripgrep
    wget
    fastfetch
    htop
    htop-vim
    btop

    # Clipboard & Screenshot Tools
    wl-clipboard
    hyprshot

    # Wallpaper Managers
    swaybg
    feh

    # Audio Management
    pulseaudioFull # cli
    pavucontrol # gui

    # Development Tools
    nodejs_22
    pnpm_10
    lua-language-server
    typescript-language-server
    nil # nix lang server

    # File System & Compatibility
    pkgs.nix-ld  # Compatibility layer for dynamic linking in Nix

    # Applications
    postman
    brave
    telegram-desktop
  ];
}
