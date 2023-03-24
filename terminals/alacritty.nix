{ pkgs, ... }:

{
  programs = {
    alacritty = {
      enable = true;
      settings = {
        env = {
          "TERM" = "xterm-256color";
        };
        font = {
          normal.family = "FiraCode Nerd Font";
          bold.family = "FiraCode Nerd Font";
          italic.family = "FiraCode Nerd Font";
          size = 11;
        };
        shell.program = "/bin/zsh";
        colors = {
          # Default colors
          primary = {
            background = "#303446";
            foreground = "C6D0F5";
            dim_foreground = "#C6D0F5";
            bright_foreground = "#C6D0F5";
          };

          cursor = {
            text = "#303446"; # base
            cursor = "#F2D5CF"; # rosewater
          };

          vi_mode_cursor = {
            text = "#303446"; # base
            cursor = "#BABBF1"; # lavender
          };

          search = {
            matches = {
              foreground = "#303446"; # base
              background = "#A5ADCE"; # subtext0
            };
          };

          focused_match = {
            matches = {
              foreground = "#303446"; # base
              background = "#A6D189"; # green
            };
          };

          footer_bar = {
            matches = {
              foreground = "#303446"; # base
              background = "#A5ADCE"; # subtext0
            };
          };

          hints = {
            start = {
              foreground = "#303446"; # base
              background = "#E5C890"; # yellow 
            };
            end = {
              foreground = "#303446"; # base
              background = "#A5ADCE"; # subtext0 
            };
          };

          selection = {
            text = "#303446"; # base
            background = "#F2D5CF"; # rosewater
          };

          # Normal colors
          normal = {
            black =   "#51576D";
            red =     "#E78284";
            green =   "#A6D189";
            yellow =  "#E5C890";
            blue =    "#8CAAEE";
            magenta = "#F4B8E4";
            cyan =    "#81C8BE";
            white =   "#A5ADCE";
          };

          # Bright colors
          bright = {
            black = "#626880"; # surface2
            red = "#E78284"; # red
            green = "#A6D189"; # green
            yellow = "#E5C890"; # yellow
            blue = "#8CAAEE"; # blue
            magenta = "#F4B8E4"; # pink
            cyan = "#81C8BE"; # teal
            white = "#A5ADCE"; # subtext0
          };

          dim = {
            black = "#51576D"; # surface1
            red = "#E78284"; # red
            green = "#A6D189"; # green
            yellow = "#E5C890"; # yellow
            blue = "#8CAAEE"; # blue
            magenta = "#F4B8E4"; # pink
            cyan = "#81C8BE"; # teal
            white = "#B5BFE2"; # subtext1
          };
        };
      };
    };
  };
}