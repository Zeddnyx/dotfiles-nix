{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Jee";
    userEmail = "jee.nvim@gmail.com";
    aliases = {
      g = "git";
      ga = "git add";
      gc = "git commit -m";
      gs = "git status --short";
      gpl = "git pull origin";
      gck = "git checkout";
      grs = "git remote set-url origin";
      gpush = "git push origin";
      gpull = "git pull origin";
    };
  };
}
