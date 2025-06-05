{
  inputs = {
    example-repo.url = "github:nothingnesses/flake-pound-issue/its/a#branch";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = {
    example-repo,
    nixpkgs,
    self,
    ...
  }: let
    system = "x86_64-linux";
  in {
    packages.${system}.default = nixpkgs.legacyPackages.${system}.hello;
  };
}
