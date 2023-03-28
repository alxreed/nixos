{ config, pkgs, ... }:

{
  imports =  [                                  
    ./hardware-configuration.nix                
    ../../wm/gnome/default.nix
  ] ++
  (import ../../virtualisation);

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      grub = {
        enable = true;
        device = "/dev/vda";
        useOSProber = true;
      };
    };
  };

  programs = {                                  # No xbacklight, this is the alterantive
    dconf.enable = true;
  };

  services = {
    xserver = {                                 
      resolutions = [
        { x = 1920; y = 1080; }
        { x = 1600; y = 900; }
      ];
    };
  };
}