{ pkgs, ... }:

{
  programs = {
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableSyntaxHighlighting = true;
      enableCompletion = true;
      
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "thefuck"
        ];
        theme = "robbyrussell";
      };

      shellAliases = {
        start = "sudo systemctl start";
        stop = "sudo systemctl stop";
        status = "systemctl status";
        restart = "sudo systemctl restart";

        # Get External IP / local IPs
        ip = "curl ipinfo.io/ip";
        ips = "ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'";
        speedtest = "wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip";

        # lock screen
        lock = "gnome-screensaver-command -l";

        # app running
        apps = "ps -A";

        # Pushing/pulling to origin remote
        gpo = "git push origin";
        glo = "git pull origin";

        # Pushing/pulling to origin remote, master branch
        glom = "git pull origin master";
        glod = "git pull origin develop";

        # Commit amend
        gcamno = "git commit --amend --no-edit";
        gcam = "git commit --amend";

        # connect to ubastion
        bastion = "ssh ubastion.adeo.com -l 20013176";
      };
    };

    starship.enable = true;
  };
}