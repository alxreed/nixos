{ config, lib, pkgs, user, ... }:

{
  imports =
    (import ../terminals) ++
    [(import ../shell/zsh.nix)] ++
    [(import ../git/git.nix)];

  home = {
    username = "${user}";
    homeDirectory = "/home/${user}";

    file.".background-image".source = ../wallpapers/surface1-bebop.jpg;

    packages = with pkgs; [
        
      # Version Control
      git
      thefuck
      gh
  
      # Editors
      vscode

      # Utils
      docker
    
      # Terminal
      alacritty

      # Chat
      slack
      discord

      # SQL
      dbeaver
      mongodb-compass

      # Dev Tools
      postman

      # Theme
      zafiro-icons

      # Browser
      firefox
      google-chrome
    ];

    stateVersion = "22.11";
  };

  programs = {
    home-manager.enable = true;
  };

  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Dark";
      package = pkgs.catppuccin-gtk;
    };
    iconTheme = {
      name = "Zafiro-icons-Dark";
      package = pkgs.zafiro-icons;
    };
    cursorTheme = {
      name = "Catppuccin-Frappe-Red-Cursors";
      package = pkgs.catppuccin-cursors.frappeRed;
    };
    font = {
      #name = "JetBrains Mono Medium";
      name = "FiraCode Nerd Font Mono Medium";
    };                                  
  };
}