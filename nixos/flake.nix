{
  description = "Personal NixOS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { self
    , nixpkgs
    , nixpkgs-unstable
    , ...
    } @ inputs:
    let
      inherit (self) outputs;
    in
    {
      # NixOS configuration entrypoint
      # Available through 'nixos-rebuild --flake .#your-hostname'
      nixosConfigurations = {
        nixPC =
          let
            username = "richard";
          in
          nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs outputs username; };
            modules = [ ./hosts/nixPC/default.nix ];
          };
        nixRasp =
          let
            username = "richard";
          in
          nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs outputs username; };
            modules = [ ./hosts/nixRasp/default.nix ];
          };
      };
    };
}
