{ config, pkgs, ... }:

{
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
    allow_images=true
    hide_scroll=true

    aways_parse_args=false
    show_all=false
  '';

  xdg.configFile."wofi/style.css".text = ''
    window {
      margin: 0px;
      background-color: #1b211e;
      border-radius: 10px;
      height: 10vh;
    }

    #input {
      margin: 5px;
      border: none;
      color: #ebe6e0;
      background-color: #1b211e;
    }

    #inner-box {
      margin: 5px;
      border: none;
      background-color: #1b211e;
    }

    #outer-box {
      margin: 5px;
      border: none;
      background-color: #1b211e;
    }

    #scroll {
      margin: 0px;
      border: none;
    }

    #text {
      margin: 5px;
      border: none;
      color: #ebe6e0;
    }

    #text:selected {
      color: #ebe6e0;
      background: #4c7766;
    }

    #entry:selected {
      background-color: #4c7766;
    }
  '';
}
