{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      # fastfetch

      alias vi nvim
      alias ga "git add $1"
      alias gc "git commit -m $1"
      alias gs "git status --short"
      alias gpl "git pull origin $1"
      alias gck "git checkout $1"
      alias grs "git remote set-url origin $1"
      alias gpush "git push origin $1"
      alias gpull "git pull origin $1"
      alias scr "$HOME/Notes/scr.sh"
      alias nrd "npm run dev"
      alias nrs "npm run start"
      alias nrb "npm run build"
      alias prd "pnpm run dev"
      alias prs "pnpm run start"
      alias prb "pnpm run build"

      set -gx PATH ~/.npm-global/bin $PATH
      set -x EDITOR nvim

      if status is-interactive
      and not set -q TMUX
        tmux new-session -A -s main
      end
    '';

    shellAliases = {
      rm = ''
        set args (string join ' ' -- $argv)
        if string match -q '*-rf*' -- $args
          printf "\033[1;31m[WARNING]\033[0m You are about to run: \033[1;33mrm -rf $args\033[0m\n"
          printf "Are you sure? Type 'yes' to proceed or anything else to cancel.\n"
          read -l confirm
          if test "$confirm" = "yes"
            command rm $argv
          else
            echo "Operation cancelled."
          end
        else
          command rm $argv
        end
      '';
    };
  };
}
