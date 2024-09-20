{
  description = "Personal NixOS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { self,
      nixpkgs,
      ...
    } @ inputs: let
      inherit (self) outputs;
      username = "richard";
    in
    {
      # import the overlay (doesn't activate it yet)
      overlays = import ./overlays {inherit inputs;};
        # NixOS configuration entrypoint
        # Available through 'nixos-rebuild --flake .#your-hostname'
        nixosConfigurations = {
          nixPC =
            nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = { inherit inputs outputs; };
              modules = [ 
                ./hosts/nixPC/default.nix
                ./users/${username}.nix
              ];
            };
          nixRasp =
            nixpkgs.lib.nixosSystem {
              specialArgs = {
                inherit username;
              };
              modules = [ 
                ./hosts/nixRasp/default.nix
                ./users/${username}.nix
              ];
            };
        };
    };
}
