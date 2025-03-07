let
  style = import ./settings.nix;
in {
  programs.git = {
    enable = true;
    userName = "${style.user.name}";
    userEmail = "${style.user.email}";
    extraConfig = {
      init.defaultBranch = "main";
      color.ui = "auto";
      push = {
        default = "current";
      };
      merge = {
        conflictstyle = "diff3";
        stat = "true";
      };
    };
    aliases = {
      g = "git";
      ga = "git add";
      gc = "!f() { git commit -m \"$1\"; }; f";
      gs = "git status --short";
      gpl = "git pull origin";
      gck = "git checkout";
      grs = "git remote set-url origin";
      gpush = "git push origin";
      gpull = "git pull origin";
    };
    ignores = [
      "*~"
      "*.swp"
      "*result*"
      ".direnv"
      ".env"
      ".env.local"
      ".next"
      "node_modules"
    ];
  };
}
