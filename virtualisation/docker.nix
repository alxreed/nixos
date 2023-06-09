{ config, pkgs, user, ... }:

{
  virtualisation = {
    docker = {
      enable = true;
      rootless = {
        enable = true;
        setSocketVariable = true;
      };
    };
  };

  users.groups.docker.members = [ "${user}" ];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}