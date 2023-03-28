{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName  = "Alexandre Reed";
    userEmail = "ch.alexandre.reed@gmail.com";
    extraConfig = {
      color = {
        branch = "auto";
        diff = "auto";
        interactive = "auto";
        status = "auto";
        ui = "auto";
      };
      core = {
        pager = "less -FRSX";
        autocrlf = "input";
        editor = "vim";
      };
      help = {
        autocorrect = 1;
      };
      push = {
        default = "current";
      };
      pull = {
        rebase = true;
      };
      init = {
        defaultBranch = "main";
      };
    };
  

    aliases = {
      co = "checkout";
      st = "status -sb";
      br = "branch";
      ci = "commit";
      fo = "fetch origin";
      d = "!git --no-pager diff";
      dt  = "difftool";
      stat = "!git --no-pager diff --stat";
      dammit = "!BRANCH=$(git rev-parse --abbrev-ref HEAD) \
        && git fetch origin $BRANCH \
        && git reset --hard origin/$BRANCH";
      fixup = "!sh -c 'SHA=$(git rev-parse $1) \
          && git commit --fixup $SHA \
          && git rebase -i --autosquash $SHA~' -";
      pushf = "push --force-with-lease";
      po = "push origin";
      plo = "pull origin";
      plod = "pull origin dev";
      plom = "pull origin master";

      # Clean merged branches
      sweep = "!git branch --merged master | grep -v 'master$' | xargs git branch -d && git remote prune origin";

      # http://www.jukie.net/bart/blog/pimping-out-git-log
      lg = "log --graph --all --pretty=format:'%Cred%h%Creset - %s %Cgreen(%cr) %C(bold blue)%an%Creset %C(yellow)%d%Creset'";

      # Serve local repo. http://coderwall.com/p/eybtga
      # Then other can access via `git clone git://#{YOUR_IP_ADDRESS}/
      serve = "!git daemon --reuseaddr --verbose  --base-path=. --export-all ./.git";

      m = "checkout main";

      # Removes a file from the index
      unstage = "reset HEAD --";
    };
  };
}
