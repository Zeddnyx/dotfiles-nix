let
  styles = import ./styles.nix;
in {
  programs.wofi = {
    enable = true;
  };

  xdg.configFile."wofi/config".text = ''
    term=kitty
    location=center
    width=20%
    lines=5

    search=brave
    prompt=Search
    show=drun
    insensitive=true
    # allow_images=true
    hide_scroll=true

    aways_parse_args=false
    show_all=false
  '';

  xdg.configFile."wofi/style.css".text = ''
    window {
      margin: 0px;
      background-color: ${styles.color.background};
      border-radius: 10px;
      height: 10vh;
    }

    #input {
      margin: 5px;
      border: none;
      color: ${styles.color.foreground};
      background-color: ${styles.color.background};
    }

    #inner-box {
      margin: 5px;
      border: none;
      background-color: ${styles.color.background};
    }

    #outer-box {
      margin: 5px;
      border: none;
      background-color: ${styles.color.background};
    }

    #scroll {
      margin: 0px;
      border: none;
    }

    #text {
      margin: 5px;
      border: none;
      color: ${styles.color.foreground};
    }

    #text:selected {
      color: ${styles.color.foreground};
      background: ${styles.color.primary};
    }

    #entry:selected {
      background-color: ${styles.color.primary};
    }
  '';
}
