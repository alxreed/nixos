{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";                  # Nix Packages

    home-manager = {                                                      # User Package Management
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager }:     
    let                                                                     # Variables that can be used in the config files.
      user = "alex";
      location = "$HOME/.setup";
    in                                                            # Use above variables in ...
    {
      nixosConfigurations = (                                               # NixOS configurations
        import ./hosts {                                                    # Imports ./hosts/default.nix
          inherit (nixpkgs) lib;
          inherit inputs nixpkgs home-manager user location;
        }
      );
    };
}