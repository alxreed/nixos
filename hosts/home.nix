{ config, lib, pkgs, user, ... }:

{
  imports =
    [(import ../git/git.nix)] ++
    (import ../terminals) ++ 
    (import ../virtualisation) ++  ;

  home = {
    username = "${user}";
    homeDirectory = "/home/${user}";

    packages = with pkgs; [
        
      # Version Control
      git
      gh
  
      # Editors
      vscode

      # Utils
      docker
    
      # Terminal
      alacritty

      # Gnome
      #gnome-extension-manager
      #gnome.gnome-tweaks
      #gnomeExtensions.clipboard-indicator
      #gnomeExtensions.caffeine
      #gnomeExtensions.appindicator

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
  };
}