{ config, lib, pkgs, ... }:

{

  programs = {
    dconf.enable = true;
  };

  # Configure keymap in X11
  services = {
    xserver = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    enable = true;
    layout = "fr";
    xkbVariant = "nodeadkeys";
    };
    udev.packages = with pkgs; [
      gnome.gnome-settings-daemon
    ];
  };

  environment = {
    systemPackages = with pkgs; [
      gnome.dconf-editor
      gnome-extension-manager
      gnome.gnome-tweaks
    ];
  };
}