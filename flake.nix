{
  description = "Portfolio";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = inputs@{ self, nixpkgs, ... }:
  let
    allSystems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86-64-darwin"
      "aarch64-darwin"
    ];
    forAllSystems = f: nixpkgs.lib.genAttrs allSystems (system: f {
      inherit system;
      pkgs = import nixpkgs {
        inherit system; 
        overlays = [
        ];
      };
    });
  in
  {
    devShell = forAllSystems ({ pkgs, system }:
      pkgs.mkShell {
        buildInputs = with pkgs; [
          bun
        ];
      });
  };
}
