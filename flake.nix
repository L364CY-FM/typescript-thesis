{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { nixpkgs, ... }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    # Define the development shell
    devShells.${system}.default = pkgs.mkShell {
      # Install the required Python environment with packages
      packages = [
        pkgs.typst
      ];

      # Optional shellHook for additional configuration
      # shellHook = ''
      # '';
    };
  };
}

